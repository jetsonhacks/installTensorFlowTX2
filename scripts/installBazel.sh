#!/bin/bash
# NVIDIA Jetson TX2
# TensorFlow Installation
# Install Bazel
# Version 0.10.0
# We use the release distribution so that we don't have to build protobuf
#
INSTALL_DIR=$PWD
cd $HOME
wget --no-check-certificate https://github.com/bazelbuild/bazel/releases/download/0.10.0/bazel-0.10.0-dist.zip
unzip bazel-0.10.0-dist.zip -d bazel-0.10.0-dist
sudo chmod -R ug+rwx $HOME/bazel-0.10.0-dist
# git clone https://github.com/bazelbuild/bazel.git
cd bazel-0.10.0-dist
./compile.sh 
sudo cp output/bazel /usr/local/bin
