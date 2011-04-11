$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get a proper init file
PRODUCT_COPY_FILES += \
    device/malata/smb_a1002/init.harmony.rc:root/init.harmony.rc

# Place wifi files
PRODUCT_COPY_FILES += \
    device/malata/smb_a1002/wifi/bcm4329.ko:system/lib/hw/wlan/bcm4329.ko \
    device/malata/smb_a1002/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/malata/smb_a1002/wifi/dhcpcd.conf:/system/etc/dhcpcd/dhcpcd.conf

# Place bin files
PRODUCT_COPY_FILES += \
    device/malata/smb_a1002/bin/TSCalibration:system/bin/TSCalibration

# Place permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

$(call inherit-product-if-exists, vendor/malata/smb_a1002/smb_a1002-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/malata/smb_a1002/overlay

# Include packages
PRODUCT_PACKAGES += \
    librs_jni \
    gralloc.default \
    gralloc.tegra \
    overlay.tegra \
    lights.tegra \
    sensors.tegra \
    audiofix.smb_a1002 \
    libreference-ril \
    libreference-cdma-sms \
    screencap

# Use MDPI artwork
PRODUCT_LOCALES += mdpi

# VOLD
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/etc/vold.harmony.fstab:system/etc/vold.fstab

# Media Profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/media_profiles.xml:system/etc/media_profiles.xml

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/malata/smb_a1002/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Set property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    keyguard.no_require_sim=1

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_smb_a1002
PRODUCT_DEVICE := smb_a1002
