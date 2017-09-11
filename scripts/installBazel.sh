#!/bin/bash
# NVIDIA Jetson TX2
# TensorFlow Installation
# Install Bazel
# Version 0.5.2 - v0.5.3 apparently has issues
# We use the release distribution so that we don't have to build protobuf
#
INSTALL_DIR=$PWD
cd $HOME
wget --no-check-certificate https://github.com/bazelbuild/bazel/releases/download/0.5.2/bazel-0.5.2-dist.zip
unzip bazel-0.5.2-dist.zip -d bazel-0.5.2-dist
sudo chmod -R ug+rwx $HOME/bazel-0.5.2-dist
# git clone https://github.com/bazelbuild/bazel.git
cd bazel-0.5.2-dist
./compile.sh 
sudo cp output/bazel /usr/local/bin
