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
"""TFX ExampleValidator component definition."""
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

from typing import Optional, Text

from tfx import types
from tfx.components.base import base_component
from tfx.components.base import executor_spec
from tfx.components.example_validator import executor
from tfx.types import standard_artifacts
from tfx.types.standard_component_specs import ExampleValidatorSpec


class ExampleValidator(base_component.BaseComponent):
  """A TFX component to validate input examples.

  The ExampleValidator component uses [Tensorflow Data
  Validation](https://www.tensorflow.org/tfx/data_validation) to
  validate the statistics of some splits on input examples against a schema.

  The ExampleValidator component identifies anomalies in training and serving
  data. The component can be configured to detect different classes of anomalies
  in the data. It can:
    - perform validity checks by comparing data statistics against a schema that
      codifies expectations of the user.
    - detect data drift by looking at a series of data.
    - detect changes in dataset-wide data (i.e., num_examples) across spans or
      versions.

  Schema Based Example Validation
  The ExampleValidator component identifies any anomalies in the example data by
  comparing data statistics computed by the StatisticsGen component against a
  schema. The schema codifies properties which the input data is expected to
  satisfy, and is provided and maintained by the user.

  Please see https://www.tensorflow.org/tfx/data_validation for more details.

  ## Example
  ```
  # Performs anomaly detection based on statistics and data schema.
  validate_stats = ExampleValidator(
      stats=statistics_gen.outputs['output'],
      schema=infer_schema.outputs['output'])
  ```
  """

  SPEC_CLASS = ExampleValidatorSpec
  EXECUTOR_SPEC = executor_spec.ExecutorClassSpec(executor.Executor)

  def __init__(self,
               stats: types.Channel = None,
               schema: types.Channel = None,
               output: Optional[types.Channel] = None,
               statistics: Optional[types.Channel] = None,
               instance_name: Optional[Text] = None):
    """Construct an ExampleValidator component.

    Args:
      stats: A Channel of 'ExampleStatisticsPath` type. This should contain at
        least 'eval' split. Other splits are ignored currently.  Will be
        deprecated in the future for the `statistics` parameter.
      schema: A Channel of "SchemaPath' type. _required_
      output: Output channel of 'ExampleValidationPath' type.
      statistics: Future replacement of the 'stats' argument.
      instance_name: Optional name assigned to this specific instance of
        ExampleValidator. Required only if multiple ExampleValidator components
        are declared in the same pipeline.

    Either `stats` or `statistics` must be present in the arguments.
    """
    stats = stats or statistics
    output = output or types.Channel(
        type=standard_artifacts.ExampleAnomalies,
        artifacts=[standard_artifacts.ExampleAnomalies()])
    spec = ExampleValidatorSpec(stats=stats, schema=schema, output=output)
    super(ExampleValidator, self).__init__(
        spec=spec, instance_name=instance_name)
