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
"""Tests for tfx.orchestration.kubeflow.base_component."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import json
import os
from kfp import dsl
import tensorflow as tf

from ml_metadata.proto import metadata_store_pb2
from tfx.components.example_gen.csv_example_gen import component as csv_example_gen_component
from tfx.components.statistics_gen import component as statistics_gen_component
from tfx.orchestration import pipeline as tfx_pipeline
from tfx.orchestration.kubeflow import base_component
from tfx.orchestration.kubeflow.proto import kubeflow_pb2
from tfx.orchestration.launcher import in_process_component_launcher
from tfx.types import channel_utils
from tfx.types import standard_artifacts


class BaseComponentTest(tf.test.TestCase):
  maxDiff = None  # pylint: disable=invalid-name
  _test_pipeline_name = 'test_pipeline'

  def setUp(self):
    super(BaseComponentTest, self).setUp()
    examples = standard_artifacts.ExternalArtifact()
    example_gen = csv_example_gen_component.CsvExampleGen(
        input_base=channel_utils.as_channel([examples]))
    statistics_gen = statistics_gen_component.StatisticsGen(
        input_data=example_gen.outputs['examples'], instance_name='foo')

    pipeline = tfx_pipeline.Pipeline(
        pipeline_name=self._test_pipeline_name,
        pipeline_root='test_pipeline_root',
        metadata_connection_config=metadata_store_pb2.ConnectionConfig(),
        components=[example_gen, statistics_gen],
    )

    test_pipeline_root = dsl.PipelineParam(name='pipeline-root-param')

    self._metadata_config = kubeflow_pb2.KubeflowMetadataConfig()
    self._metadata_config.mysql_db_service_host.environment_variable = 'MYSQL_SERVICE_HOST'
    with dsl.Pipeline('test_pipeline'):
      self.component = base_component.BaseComponent(
          component=statistics_gen,
          component_launcher_class=in_process_component_launcher
          .InProcessComponentLauncher,
          depends_on=set(),
          pipeline=pipeline,
          pipeline_name=self._test_pipeline_name,
          pipeline_root=test_pipeline_root,
          tfx_image='container_image',
          kubeflow_metadata_config=self._metadata_config,
      )
    self.tfx_component = statistics_gen

  def testContainerOpArguments(self):
    # TODO(hongyes): make the whole args list in one golden file to keep
    # source of truth in same file.
    source_data_dir = os.path.join(os.path.dirname(__file__), 'testdata')
    with open(os.path.join(source_data_dir,
                           'component.json')) as component_json_file:
      formatted_component_json = json.dumps(
          json.load(component_json_file), sort_keys=True)

    expected_args = [
        '--pipeline_name',
        'test_pipeline',
        '--pipeline_root',
        '{{pipelineparam:op=;name=pipeline-root-param}}',
        '--kubeflow_metadata_config',
        '{\n'
        '  "mysqlDbServiceHost": {\n'
        '    "environmentVariable": "MYSQL_SERVICE_HOST"\n'
        '  }\n'
        '}',
        '--beam_pipeline_args',
        '[]',
        '--additional_pipeline_args',
        '{}',
        '--component_launcher_class_path',
        'tfx.orchestration.launcher.in_process_component_launcher.InProcessComponentLauncher',
        '--serialized_component',
        formatted_component_json,
    ]
    self.assertEqual(self.component.container_op.arguments[:len(expected_args)],
                     expected_args)

  def testContainerOpName(self):
    self.assertEqual('StatisticsGen.foo',
                     self.tfx_component.id)
    self.assertEqual('StatisticsGen_foo',
                     self.component.container_op.name)


if __name__ == '__main__':
  tf.test.main()
