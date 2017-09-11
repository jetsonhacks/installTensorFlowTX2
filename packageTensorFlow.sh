#!/bin/bash
# NVIDIA Jetson TX2
cd $HOME/tensorflow
bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
mv /tmp/tensorflow_pkg/tensorflow-*.whl $HOME/

