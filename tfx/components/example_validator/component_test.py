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
"""Tests for tfx.components.example_validator.component."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf
from tfx.components.example_validator import component
from tfx.types import channel_utils
from tfx.types import standard_artifacts


class ExampleValidatorTest(tf.test.TestCase):

  def testConstruct(self):
    example_validator = component.ExampleValidator(
        stats=channel_utils.as_channel(
            [standard_artifacts.ExampleStatistics(split='eval')]),
        schema=channel_utils.as_channel([standard_artifacts.Schema()]),
    )
    self.assertEqual('ExampleValidationPath',
                     example_validator.outputs['output'].type_name)


if __name__ == '__main__':
  tf.test.main()
