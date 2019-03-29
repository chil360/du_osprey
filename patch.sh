
TOP=${PWD}
. build/envsetup.sh

#############################################################
# PATCHES                                                   #
#############################################################

##
##  Camera HAL1
##
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

cd system/sepolicy
git am -3 $TOP/0001-Add-rules-required-for-TARGET_HAS_LEGACY_CAMERA_HAL1.patch
cd $TOP

##
##  Disable Battery LED
##
cd device/motorola/msm8916-common
git am -3 $TOP/0001-DNM-Disable-Battery-LED.patch
cd $TOP

##
##  Custom Fonts
##
cd frameworks/base
git am -3 $TOP/0001-DU-Custom-Fonts-1-4.patch
cd $TOP

cd packages/apps/Settings
git am -3 $TOP/0001-DU-Custom-Fonts-2-4.patch
cd $TOP

cd system/sepolicy
git am -3 $TOP/0001-DU-Custom-Fonts-3-4.patch
cd $TOP

cd vendor/themes
git am -3 $TOP/0001-DU-Custom-Fonts-4-4.patch
cd $TOP

##
##  Fix Font map with EXCLUDE_SERIF_FONTS
##
cd frameworks/base
git am -3 $TOP/0001-fonts-Build-different-fonts.xml-if-EXCLUDE_SERIF_FON.patch
cd $TOP

##
##  Lag Fixes
##
cd frameworks/base
git am -3 $TOP/0001-Improve-performance-of-unclipped-save-layers.patch
cd $TOP

cd external/skia
git am -3 $TOP/0001-Add-rect-parameter-to-makeImageSnapshot-and-stop-usi.patch
git am -3 $TOP/0002-fGpu-is-null-when-GrGpuResource-release.patch
cd $TOP

##
##  Audio Fixes
##
cd frameworks/av
git am -3 $TOP/0001-Request-to-reset-effect-buffer-in-clearInputBuffer.patch
cd $TOP

#############################################################
# CHERRYPICKS                                               #
#############################################################

# Example: repopick [CHANGE_NUMBER]
