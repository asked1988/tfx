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
r"""Script to generate api_docs for tfx.

# How to run

Install tensorflow_docs (if necessary):

```
pip install git+https://github.com/tensorflow/docs
```

Run the script:

```shell
python build_docs.py \
--output_dir=/tmp/tfx_api
```

Note:
  If duplicate or spurious docs are generated, consider
  blacklisting them via the `private_map` argument below. Or
  `api_generator.doc_controls`
"""

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

# Standard Imports
from absl import app
from absl import flags

import tensorflow_docs.api_generator as api_generator
from tensorflow_docs.api_generator import doc_controls
from tensorflow_docs.api_generator import generate_lib


import tfx as tfx
# pylint: disable=unused-import
from tfx import components
from tfx import orchestration
import tfx.version
# pylint: enable=unused-import

GITHUB_URL_PREFIX = ("https://github.com/tensorflow/tfx/blob/{}/tfx".format(
    tfx.version.__version__))

flags.DEFINE_string("output_dir", "/tmp/tfx_api", "Where to output the docs")
flags.DEFINE_string(
    "code_url_prefix",
    "https://github.com/tensorflow/tfx/blob/master/tfx/",
    "The url prefix for links to code.")
flags.DEFINE_bool("search_hints", True,
                  "Include metadata search hints in the generated files")
flags.DEFINE_string("site_path", "tfx/api_docs/python",
                    "Path prefix in the _toc.yaml")
FLAGS = flags.FLAGS


def main(_):
  # These make up for the empty __init__.py files.
  api_generator.utils.recursive_import(tfx.orchestration)
  api_generator.utils.recursive_import(tfx.components)

  do_not_generate_docs_for = []
  for name in ["utils", "proto", "dependencies", "version"]:
    submodule = getattr(tfx, name, None)
    if submodule is not None:
      do_not_generate_docs_for.append(submodule)

  for obj in do_not_generate_docs_for:
    doc_controls.do_not_generate_docs(obj)

  doc_generator = generate_lib.DocGenerator(
      root_title="TFX",
      py_modules=[("tfx", tfx)],
      code_url_prefix=FLAGS.code_url_prefix,
      search_hints=FLAGS.search_hints,
      site_path=FLAGS.site_path,
      private_map={},
      # local_definitions_filter ensures that shared modules are only
      # documented in the location that defines them, instead of every location
      # that imports them.
      callbacks=[api_generator.public_api.local_definitions_filter])
  doc_generator.build(output_dir=FLAGS.output_dir)


if __name__ == "__main__":
  app.run(main)
