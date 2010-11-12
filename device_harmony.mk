$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Get a proper init file
PRODUCT_COPY_FILES += \
    device/nvidia/harmony/init.harmony.rc:root/init.harmony.rc

# Place wifi files
PRODUCT_COPY_FILES += \
    device/nvidia/harmony/wifi/bcm4329.ko:system/lib/hw/wlan/bcm4329.ko \
    device/nvidia/harmony/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/nvidia/harmony/wifi/dhcpcd.conf:/system/etc/dhcpcd/dhcpcd.conf

# Place permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

$(call inherit-product-if-exists, vendor/nvidia/harmony/harmony-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nvidia/harmony/overlay

# Use MDPI artwork
PRODUCT_LOCALES += mdpi

# Keyboards
file := $(TARGET_OUT_KEYLAYOUT)/gpio-keys.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/gpio-keys.kl | $(ACP)
        $(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/nvec_keyboard.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/nvec_keyboard.kl | $(ACP)
        $(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/tegra-kbc.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/tegra-kbc.kl | $(ACP)
        $(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/usb_keyboard_102_en_us.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/usb_keyboard_102_en_us.kl | $(ACP)
        $(transform-prebuilt-to-target)

# VOLD
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/vold.harmony.fstab:system/etc/vold.fstab

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/nvidia/harmony/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := generic_harmony
PRODUCT_DEVICE := harmony
