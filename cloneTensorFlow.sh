#!/bin/bash
# NVIDIA Jetson TX2
# TensorFlow Installation
# Install Tensorflow repository then
# setup for compilation
# This does not build tensorflow
INSTALL_DIR=$PWD
cd $HOME
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout v1.3.0
patch -p1 < $INSTALL_DIR/patches/tensorflow.patch
# Patch up the Workspace.bzl for the Github Checksum issue
patch -p1 < $INSTALL_DIR/patches/workspacebzl.patch




