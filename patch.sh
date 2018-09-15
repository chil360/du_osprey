#!/bin/sh

BASEDIR=$(pwd)

cd $BASEDIR/frameworks/base
git am -3 ../../0001-Camera-allow-camera-to-use-power-key-as-shutter.patch
cd $BASEDIR

cd $BASEDIR/frameworks/av
git am -3 ../../0001-OMXNodeInstance-Allow-dynamic-native-handle-for-shar.patch
cd $BASEDIR
