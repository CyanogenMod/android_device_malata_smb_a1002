$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Get a proper init file
PRODUCT_COPY_FILES += \
    device/nvidia/harmony/init.harmony.rc:root/init.rc
#    device/nvidia/harmony/initlogo.rle:root/initlogo.rle
#    device/nvidia/harmony/init_recovery.rc:root/init_recovery.rc

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
