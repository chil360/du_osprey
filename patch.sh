#!/bin/sh

BASEDIR=$(pwd)

cd $BASEDIR/frameworks/base
git am -3 ../../0001-Camera-allow-camera-to-use-power-key-as-shutter.patch
cd $BASEDIR
