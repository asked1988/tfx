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
"""Tests for slack component."""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

from slack_component import component
import tensorflow as tf
from tfx.types import channel_utils
from tfx.types import standard_artifacts


class ComponentTest(tf.test.TestCase):

  def setUp(self):
    super(ComponentTest, self).setUp()
    self._model_export = channel_utils.as_channel([standard_artifacts.Model()])
    self._model_blessing = channel_utils.as_channel(
        [standard_artifacts.ModelBlessing()])

  def testConstruct(self):
    slack_component = component.SlackComponent(
        model_export=self._model_export,
        model_blessing=self._model_blessing,
        slack_token='token',
        slack_channel_id='slack_channel_id',
        timeout_sec=3600)
    self.assertEqual('ModelBlessingPath',
                     slack_component.outputs['slack_blessing'].type_name)


if __name__ == '__main__':
  tf.test.main()
