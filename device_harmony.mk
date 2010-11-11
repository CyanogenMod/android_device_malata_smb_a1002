$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Get a proper init file
PRODUCT_COPY_FILES += \
    device/nvidia/harmony/init.harmony.rc:root/init.harmony.rc

# Plase wifi files
PRODUCT_COPY_FILES += \
    device/nvidia/harmony/wifi/bcm4329.ko:system/lib/hw/wlan/bcm4329.ko \
    device/nvidia/harmony/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

$(call inherit-product-if-exists, vendor/nvidia/harmony/harmony-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nvidia/harmony/overlay

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
