# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Tests for tfx.orchestration.kubeflow.kubeflow_dag_runner."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import os
import shutil
import tarfile
import tempfile
from kfp import onprem
import tensorflow as tf
import yaml

from ml_metadata.proto import metadata_store_pb2
from tfx.components.example_gen.big_query_example_gen import component as big_query_example_gen_component
from tfx.components.statistics_gen import component as statistics_gen_component
from tfx.orchestration import pipeline as tfx_pipeline
from tfx.orchestration.kubeflow import kubeflow_dag_runner


# 2-step pipeline under test.
def _two_step_pipeline() -> tfx_pipeline.Pipeline:
  example_gen = big_query_example_gen_component.BigQueryExampleGen(
      query='SELECT * FROM TABLE')
  statistics_gen = statistics_gen_component.StatisticsGen(
      input_data=example_gen.outputs['examples'])
  return tfx_pipeline.Pipeline(
      pipeline_name='two_step_pipeline',
      pipeline_root='pipeline_root',
      metadata_connection_config=metadata_store_pb2.ConnectionConfig(),
      components=[example_gen, statistics_gen],
  )


class KubeflowDagRunnerTest(tf.test.TestCase):

  def setUp(self):
    super(KubeflowDagRunnerTest, self).setUp()
    self.test_dir = tempfile.mkdtemp()
    os.chdir(self.test_dir)

  def tearDown(self):
    super(KubeflowDagRunnerTest, self).tearDown()
    shutil.rmtree(self.test_dir)

  def testTwoStepPipeline(self):
    """Sanity-checks the construction and dependencies for a 2-step pipeline."""
    kubeflow_dag_runner.KubeflowDagRunner().run(_two_step_pipeline())
    file_path = os.path.join(self.test_dir, 'two_step_pipeline.tar.gz')
    self.assertTrue(tf.gfile.Exists(file_path))

    with tarfile.TarFile.open(file_path).extractfile(
        'pipeline.yaml') as pipeline_file:
      self.assertIsNotNone(pipeline_file)
      pipeline = yaml.load(pipeline_file)

      containers = [
          c for c in pipeline['spec']['templates'] if 'container' in c
      ]
      self.assertEqual(2, len(containers))

      big_query_container = [
          c for c in containers if c['name'] == 'bigqueryexamplegen'
      ]
      self.assertEqual(1, len(big_query_container))
      self.assertEqual([
          'python',
          '/tfx-src/tfx/orchestration/kubeflow/container_entrypoint.py'
      ], big_query_container[0]['container']['command'])

      statistics_gen_container = [
          c for c in containers if c['name'] == 'statisticsgen'
      ]
      self.assertEqual(1, len(statistics_gen_container))

      # Ensure dependencies between components are captured.
      dag = [c for c in pipeline['spec']['templates'] if 'dag' in c]
      self.assertEqual(1, len(dag))

      self.assertEqual(
          {
              'tasks': [{
                  'name': 'bigqueryexamplegen',
                  'template': 'bigqueryexamplegen',
                  'arguments': {
                      'parameters': [{
                          'name': 'pipeline-root',
                          'value': '{{inputs.parameters.pipeline-root}}'
                      }]
                  }
              }, {
                  'name': 'statisticsgen',
                  'template': 'statisticsgen',
                  'arguments': {
                      'parameters': [{
                          'name': 'pipeline-root',
                          'value': '{{inputs.parameters.pipeline-root}}'
                      }]
                  },
                  'dependencies': ['bigqueryexamplegen'],
              }]
          }, dag[0]['dag'])

  def testDefaultPipelineOperatorFuncs(self):
    kubeflow_dag_runner.KubeflowDagRunner().run(_two_step_pipeline())
    file_path = os.path.join(self.test_dir, 'two_step_pipeline.tar.gz')
    self.assertTrue(tf.gfile.Exists(file_path))

    with tarfile.TarFile.open(file_path).extractfile(
        'pipeline.yaml') as pipeline_file:
      self.assertIsNotNone(pipeline_file)
      pipeline = yaml.load(pipeline_file)

      containers = [
          c for c in pipeline['spec']['templates'] if 'container' in c
      ]
      self.assertEqual(2, len(containers))

      # Check that each container has default GCP credentials.

      container_0 = containers[0]
      env = [
          env for env in container_0['container']['env']
          if env['name'] == 'GOOGLE_APPLICATION_CREDENTIALS'
      ]
      self.assertEqual(1, len(env))
      self.assertEqual('/secret/gcp-credentials/user-gcp-sa.json',
                       env[0]['value'])

      container_1 = containers[0]
      env = [
          env for env in container_1['container']['env']
          if env['name'] == 'GOOGLE_APPLICATION_CREDENTIALS'
      ]
      self.assertEqual(1, len(env))
      self.assertEqual('/secret/gcp-credentials/user-gcp-sa.json',
                       env[0]['value'])

  def testVolumeMountingPipelineOperatorFuncs(self):
    mount_volume_op = onprem.mount_pvc('my-persistent-volume-claim',
                                       'my-volume-name',
                                       '/mnt/volume-mount-path')
    config = kubeflow_dag_runner.KubeflowDagRunnerConfig(
        pipeline_operator_funcs=[mount_volume_op])

    kubeflow_dag_runner.KubeflowDagRunner(config=config).run(
        _two_step_pipeline())
    file_path = os.path.join(self.test_dir, 'two_step_pipeline.tar.gz')
    self.assertTrue(tf.gfile.Exists(file_path))

    with tarfile.TarFile.open(file_path).extractfile(
        'pipeline.yaml') as pipeline_file:
      self.assertIsNotNone(pipeline_file)
      pipeline = yaml.load(pipeline_file)

      containers = [
          c for c in pipeline['spec']['templates'] if 'container' in c
      ]
      self.assertEqual(2, len(containers))

      # Check that each container has the volume mounted.
      self.assertEqual([{
          'name': 'my-volume-name',
          'mountPath': '/mnt/volume-mount-path'
      }], containers[0]['container']['volumeMounts'])

      self.assertEqual([{
          'name': 'my-volume-name',
          'mountPath': '/mnt/volume-mount-path'
      }], containers[1]['container']['volumeMounts'])

      # Check that the PVC is specified.
      self.assertEqual([{
          'name': 'my-volume-name',
          'persistentVolumeClaim': {
              'claimName': 'my-persistent-volume-claim'
          }
      }], pipeline['spec']['volumes'])


if __name__ == '__main__':
  tf.test.main()
