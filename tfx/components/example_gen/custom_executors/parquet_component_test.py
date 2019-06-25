# Copyright 2019 Google LLC. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Tests for tfx.components.example_gen.custom_executors.parquet_executor."""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import os
import mock
import tensorflow as tf
from ml_metadata.proto import metadata_store_pb2
from tfx.components.example_gen.component import FileBasedExampleGen
from tfx.components.example_gen.custom_executors import parquet_executor
from tfx.orchestration import component_launcher
from tfx.orchestration import data_types
from tfx.orchestration import publisher
from tfx.proto import example_gen_pb2
from tfx.utils import types
from tfx.utils.dsl_utils import external_input


class ComponentRunnerTest(tf.test.TestCase):

  def setUp(self):
    # Create input_base.
    input_data_dir = os.path.join(
        os.path.dirname(os.path.dirname(os.path.dirname(__file__))), 'testdata')
    self.parquet_dir_path = os.path.join(input_data_dir, 'external')

    # Create input_config.
    self.input_config = example_gen_pb2.Input(splits=[
        example_gen_pb2.Input.Split(name='parquet',
                                    pattern='parquet/*.parquet'),
    ])

    # Create output_config.
    self.output_config = example_gen_pb2.Output(
        split_config=example_gen_pb2.SplitConfig(splits=[
            example_gen_pb2.SplitConfig.Split(name='train', hash_buckets=2),
            example_gen_pb2.SplitConfig.Split(name='eval', hash_buckets=1)
        ]))

  @mock.patch.object(publisher, 'Publisher')
  def test_run(self, mock_publisher):
    mock_publisher.return_value.publish_execution.return_value = {}

    example_gen = FileBasedExampleGen(
        executor_class=parquet_executor.Executor,
        input_base=external_input(self.parquet_dir_path),
        input_config=self.input_config,
        output_config=self.output_config,
        name='parquetExampleGenComponent')

    output_data_dir = os.path.join(
        os.environ.get('TEST_UNDECLARED_OUTPUTS_DIR', self.get_temp_dir()),
        self._testMethodName)
    pipeline_root = os.path.join(output_data_dir, 'Test')
    tf.gfile.MakeDirs(pipeline_root)
    pipeline_info = data_types.PipelineInfo(
        pipeline_name='Test', pipeline_root=pipeline_root, run_id='123')

    driver_args = data_types.DriverArgs(enable_cache=True)

    connection_config = metadata_store_pb2.ConnectionConfig()
    connection_config.sqlite.SetInParent()

    launcher = component_launcher.ComponentLauncher(
        component=example_gen,
        pipeline_info=pipeline_info,
        driver_args=driver_args,
        metadata_connection_config=connection_config,
        additional_pipeline_args={})
    self.assertEqual(
        launcher._component_info.component_type,
        '.'.join([FileBasedExampleGen.__module__,
                  FileBasedExampleGen.__name__]))

    launcher.launch()

    # Get output paths.
    component_id = '.'.join([example_gen.component_name, example_gen.name])
    output_path = os.path.join(pipeline_root, component_id, 'examples/1')
    train_examples = types.TfxArtifact(type_name='ExamplesPath', split='train')
    train_examples.uri = os.path.join(output_path, 'train')
    eval_examples = types.TfxArtifact(type_name='ExamplesPath', split='eval')
    eval_examples.uri = os.path.join(output_path, 'eval')

    # Check parquet example gen outputs.
    train_output_file = os.path.join(train_examples.uri,
                                     'data_tfrecord-00000-of-00001.gz')
    eval_output_file = os.path.join(eval_examples.uri,
                                    'data_tfrecord-00000-of-00001.gz')
    self.assertTrue(tf.gfile.Exists(train_output_file))
    self.assertTrue(tf.gfile.Exists(eval_output_file))
    self.assertGreater(
        tf.gfile.GFile(train_output_file).size(),
        tf.gfile.GFile(eval_output_file).size())


if __name__ == '__main__':
  tf.test.main()
