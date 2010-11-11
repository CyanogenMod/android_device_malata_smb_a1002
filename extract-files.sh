#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VENDOR=nvidia
DEVICE=harmony

rm -r ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull needed standard libs
adb pull /system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/liba2dp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcgdrv.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/gles2_sanity.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/gles2_simplespin.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencorehw.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/omxplayer.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libhwmediarecorder.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libhwmediaplugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull needed NV libs
adb pull /system/lib/libnvodm_dtvtuner.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_2d_v2.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_utils.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvomxilclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvrm_channel.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_camera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvdispatch_helper.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_contentpipe.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvodm_misc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_tracklist.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvtestresults.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvapputil.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_service.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvodm_hdmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvodm_imager.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvidia_graphics_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvodm_query.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvidia_display_jni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvwsi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_image.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_vp6_video.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvdispmgr_d.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_parser.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvos.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_audiofx.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_2d.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvrm_graphics.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvwinsys.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvrm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_manager.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvddk_aes_user.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvtestio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_writer.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_videorenderer.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvmm_audio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnvec.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libpvnvomx.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/pvnvomx.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/nvmm_jpegenc_test.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/nvec_update_app.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/nvmm_videodec_test.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/nvodm_imager_conformance.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/nvmm_videoenc_test.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/nvddk_2d_test_sanity.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/nvodm_focuser_conformance.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull nvidia framework libs
adb pull /system/framework/com.nvidia.display.jar ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/framework/com.nvidia.graphics.jar ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/framework/com.tapntap.platform.jar ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull nvidia EGL libs
adb pull /system/lib/egl/libEGL_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull nvidia permissions
adb pull /system/etc/permissions/com.nvidia.display.xml ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/permissions/com.nvidia.graphics.xml ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull HW libs
adb pull /system/lib/hw/gralloc.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/overlay.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/lights.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.tegra.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull keychar files
adb pull /system/usr/keychars/nvec_keyboard.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/usb_keyboard_102_en_us.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/tegra-kbc.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/gpio-keys.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull bin files
adb pull /system/bin/nvmm_vc1dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_wmaprodec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_h264dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_service.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_adtsdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_wavdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_reference.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nv_hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_sorensondec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvddk_audiofx_core.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_sw_mp3dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_aacdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvrm_daemon ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_jpegenc.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvdmmultidisplay ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvddk_audiofx_transport.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_mp2dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvtest ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_mpeg4dec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_wmadec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_audiomixer.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_manager.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvmm_jpegdec.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/nvrm_avp.axf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/tegrastats ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull wifi/bt files
adb pull /system/etc/bluez/bluecore6.psr ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/wpa_supplicant.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/wlan/fw_bcm4329.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/wlan/BCM4329B1.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/wlan/bcm4329.ko ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/wlan/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/wlan/fw_bcm4329_apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__VENDOR__/$VENDOR/g > ../../../vendor/$VENDOR/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__VENDOR__/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libaudiopolicy.so:obj/lib/libaudiopolicy.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvrm_graphics.so:obj/lib/libnvrm_graphics.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvddk_audiofx.so:obj/lib/libnvddk_audiofx.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvodm_query.so:obj/lib/libnvodm_query.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvodm_misc.so:obj/lib/libnvodm_misc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvrm.so:obj/lib/libnvrm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvos.so:obj/lib/libnvos.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvdispmgr_d.so:obj/lib/libnvdispmgr_d.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvdispatch_helper.so:obj/lib/libnvdispatch_helper.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvomxilclient.so:obj/lib/libnvomxilclient.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/liba2dp.so:obj/lib/liba2dp.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvrm_channel.so:obj/lib/libnvrm_channel.so

# Standard blobs necessary for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libaudio.so:system/lib/libaudio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libaudiopolicy.so:system/lib/libaudiopolicy.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcamera.so:system/lib/libcamera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libcgdrv.so:system/lib/libcgdrv.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/gles2_sanity.so:system/lib/gles2_sanity.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/gles2_simplespin.so:system/lib/gles2_simplespin.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libopencorehw.so:system/lib/libopencorehw.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/omxplayer.so:system/lib/omxplayer.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libhwmediarecorder.so:system/lib/libhwmediarecorder.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libhwmediaplugin.so:system/lib/libhwmediaplugin.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/liba2dp.so:system/lib/liba2dp.so

# __VENDOR__ blobs for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvodm_dtvtuner.so:system/lib/libnvodm_dtvtuner.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvsm.so:system/lib/libnvsm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_utils.so:system/lib/libnvmm_utils.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvomxilclient.so:system/lib/libnvomxilclient.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_video.so:system/lib/libnvmm_video.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvrm_channel.so:system/lib/libnvrm_channel.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_camera.so:system/lib/libnvmm_camera.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvdispatch_helper.so:system/lib/libnvdispatch_helper.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_misc.so:system/lib/libnvmm_misc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_contentpipe.so:system/lib/libnvmm_contentpipe.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvodm_misc.so:system/lib/libnvodm_misc.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_tracklist.so:system/lib/libnvmm_tracklist.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvtestresults.so:system/lib/libnvtestresults.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvapputil.so:system/lib/libnvapputil.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_service.so:system/lib/libnvmm_service.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvodm_hdmi.so:system/lib/libnvodm_hdmi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvodm_imager.so:system/lib/libnvodm_imager.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvidia_graphics_jni.so:system/lib/libnvidia_graphics_jni.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvodm_query.so:system/lib/libnvodm_query.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvidia_display_jni.so:system/lib/libnvidia_display_jni.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvwsi.so:system/lib/libnvwsi.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_image.so:system/lib/libnvmm_image.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_vp6_video.so:system/lib/libnvmm_vp6_video.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvdispmgr_d.so:system/lib/libnvdispmgr_d.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm.so:system/lib/libnvmm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_parser.so:system/lib/libnvmm_parser.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvomx.so:system/lib/libnvomx.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvos.so:system/lib/libnvos.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvddk_audiofx.so:system/lib/libnvddk_audiofx.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvddk_2d.so:system/lib/libnvddk_2d.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvwinsys.so:system/lib/libnvwinsys.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvrm.so:system/lib/libnvrm.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_manager.so:system/lib/libnvmm_manager.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvddk_aes_user.so:system/lib/libnvddk_aes_user.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvtestio.so:system/lib/libnvtestio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_writer.so:system/lib/libnvmm_writer.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_videorenderer.so:system/lib/libnvmm_videorenderer.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvmm_audio.so:system/lib/libnvmm_audio.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvec.so:system/lib/libnvec.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libpvnvomx.so:system/lib/libpvnvomx.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/pvnvomx.cfg:system/etc/pvnvomx.cfg \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_jpegenc_test.so:system/lib/nvmm_jpegenc_test.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvec_update_app.so:system/lib/nvec_update_app.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_videodec_test.so:system/lib/nvmm_videodec_test.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvodm_imager_conformance.so:system/lib/nvodm_imager_conformance.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_videoenc_test.so:system/lib/nvmm_videoenc_test.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvddk_2d_test_sanity.so:system/lib/nvddk_2d_test_sanity.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvodm_focuser_conformance.so:system/lib/nvodm_focuser_conformance.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libnvrm_channel.so:system/lib/libnvrm_channel.so

# Framework files for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.nvidia.display.jar:system/framework/com.nvidia.display.jar \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.nvidia.graphics.jar:system/framework/com.nvidia.graphics.jar \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.tapntap.platform.jar:system/framework/com.tapntap.platform.jar

# EGL files for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so

# Permission files for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.nvidia.display.xml:/system/etc/permissions/com.nvidia.display.xml \\
    vendor/__VENDOR__/__DEVICE__/proprietary/com.nvidia.graphics.xml:/system/etc/permissions/com.nvidia.graphics.xml

# HW libs for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/overlay.tegra.so:system/lib/hw/overlay.tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/lights.tegra.so:system/lib/hw/lights.tegra.so \\
    vendor/__VENDOR__/__DEVICE__/proprietary/sensors.tegra.so:system/lib/hw/sensors.tegra.so

# Keychar files for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvec_keyboard.kcm.bin:system/usr/keychars/nvec_keyboard.kcm.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/usb_keyboard_102_en_us.kcm.bin:system/usr/keychars/usb_keyboard_102_en_us.kcm.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/tegra-kbc.kcm.bin:system/usr/keychars/tegra-kbc.kcm.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/gpio-keys.kcm.bin:system/usr/keychars/gpio-keys.kcm.bin

# bin files for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_vc1dec.axf:system/bin/nvmm_vc1dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_wmaprodec.axf:system/bin/nvmm_wmaprodec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_h264dec.axf:system/bin/nvmm_h264dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_service.axf:system/bin/nvmm_service.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_adtsdec.axf:system/bin/nvmm_adtsdec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_wavdec.axf:system/bin/nvmm_wavdec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_reference.axf:system/bin/nvmm_reference.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nv_hciattach:system/bin/nv_hciattach \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_sorensondec.axf:system/bin/nvmm_sorensondec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_mp3dec.axf:system/bin/nvmm_mp3dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvddk_audiofx_core.axf:system/bin/nvddk_audiofx_core.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_sw_mp3dec.axf:system/bin/nvmm_sw_mp3dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_aacdec.axf:system/bin/nvmm_aacdec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvrm_daemon:system/bin/nvrm_daemon \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_jpegenc.axf:system/bin/nvmm_jpegenc.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvdmmultidisplay:system/bin/nvdmmultidisplay \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvddk_audiofx_transport.axf:system/bin/nvddk_audiofx_transport.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_mp2dec.axf:system/bin/nvmm_mp2dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvtest:system/bin/nvtest \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_mpeg4dec.axf:system/bin/nvmm_mpeg4dec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_wmadec.axf:system/bin/nvmm_wmadec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_audiomixer.axf:system/bin/nvmm_audiomixer.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_manager.axf:system/bin/nvmm_manager.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvmm_jpegdec.axf:system/bin/nvmm_jpegdec.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvrm_avp.axf:system/bin/nvrm_avp.axf \\
    vendor/__VENDOR__/__DEVICE__/proprietary/tegrastats:system/bin/tegrastats

# wifi/bt files for __DEVICE__
PRODUCT_COPY_FILES += \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bluecore6.psr:system/etc/bluez/bluecore6.psr \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fw_bcm4329.bin:system/lib/hw/wlan/fw_bcm4329.bin \\
    vendor/__VENDOR__/__DEVICE__/proprietary/BCM4329B1.hcd:system/lib/hw/wlan/BCM4329B1.hcd \\
    vendor/__VENDOR__/__DEVICE__/proprietary/bcm4329.ko:system/lib/hw/wlan/bcm4329.ko \\
    vendor/__VENDOR__/__DEVICE__/proprietary/nvram.txt:system/lib/hw/wlan/nvram.txt \\
    vendor/__VENDOR__/__DEVICE__/proprietary/fw_bcm4329_apsta.bin:system/lib/hw/wlan/fw_bcm4329_apsta.bin
EOF

./setup-makefiles.sh
