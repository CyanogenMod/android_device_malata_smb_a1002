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

VENDOR=malata
DEVICE=smb_a1002

rm -r ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull needed standard libs
adb pull /system/lib/libaudio.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcgdrv.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/gles2_simplespin.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencorehw.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/omxplayer.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libhwmediarecorder.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libhwmediaplugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgps.so ../../../vendor/$VENDOR/$DEVICE/proprietary

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

# Pull TnT framework files
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

# Pull keylayout files
adb pull /system/usr/keylayout/gpio-keys.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/nvec_keyboard.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/tegra-kbc.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/usb_keyboard_102_en_us.kl ../../../vendor/$VENDOR/$DEVICE/proprietary

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
adb pull /system/lib/hw/wlan/fw_bcm4329.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/wlan/BCM4329B1.hcd ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/wlan/nvram.txt ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/wlan/fw_bcm4329_apsta.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/bc_hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull OMX libs
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/pvplayer.cfg ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull Opencore libs
adb pull /system/lib/libopencore_author.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_downloadreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_download.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_mp4localreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_mp4local.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_net_support.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_player.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_rtspreg.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_rtsp.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Pull Stage Fright (from Ventana GB)
adb pull /system/lib/libstagefrighthw.so ../../../vendor/$VENDOR/$DEVICE/proprietary

# Run makefile setup
./setup-makefiles.sh
