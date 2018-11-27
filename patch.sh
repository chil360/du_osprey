
TOP=${PWD}
. build/envsetup.sh

#############################################################
# PATCHES                                                   #
#############################################################

cd hardware/qcom/display-caf/msm8916/
git am -3 $TOP/0002-display-Include-missing-headers.patch
git am -3 $TOP/0003-Make-hwc_vsync-thread-realtime.patch
git am -3 $TOP/0004-hwcomposer-Work-around-overzealous-fortify-checks.patch
cd $TOP

cd build/make
git am -3 $TOP/0001-soong_config-Add-legacy-HAL1-camera.patch
cd $TOP

cd build/soong
git am -3 $TOP/0001-soong-Add-legacy-HAL1-camera.patch
cd $TOP

cd frameworks/av
git am -3 $TOP/0001-camera-media-Support-legacy-HALv1-camera-in-mediaser.patch
git am -3 $TOP/0002-Camera-check-metadata-type-before-releasing-frame.patch
git am -3 $TOP/0003-libstagefright-encoder-must-exist-when-source-starti.patch
cd $TOP

cd frameworks/base
git am -3 $TOP/0001-CameraServiceProxy-Loosen-UID-check.patch
cd $TOP

cd device/motorola/msm8916-common
git am -3 $TOP/0001-DO-NOT-MERGE-msm8916-common-Force-battery-led-off.patch
cd $TOP

#############################################################
# CHERRYPICKS                                               #
#############################################################

# Example: repopick [CHANGE_NUMBER]

