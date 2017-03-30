#!/bin/bash
# NVIDIA Jetson TX1
# TensorFlow Installation
# Install Tensorflow repository then
# setup for compilation
# This does not build tensorflow
INSTALL_DIR=$PWD
cd $HOME
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout v1.0.1
patch -p1 < $INSTALL_DIR/patches/tensorflow.patch




