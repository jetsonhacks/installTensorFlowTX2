#!/bin/bash
# NVIDIA Jetson TX1
# TensorFlow Installation
# Install Bazel
# We use the release distribution so that we don't have to build protobuf
#
INSTALL_DIR=$PWD
cd $HOME
wget --no-check-certificate https://github.com/bazelbuild/bazel/releases/download/0.4.5/bazel-0.4.5-dist.zip
unzip bazel-0.4.5-dist.zip -d bazel-0.4.5-dist
sudo chmod -R ug+rwx $HOME/bazel-0.4.5-dist
# git clone https://github.com/bazelbuild/bazel.git
cd bazel-0.4.5-dist
patch -p0 < $INSTALL_DIR/patches/bazel.patch
./compile.sh 
sudo cp output/bazel /usr/local/bin
