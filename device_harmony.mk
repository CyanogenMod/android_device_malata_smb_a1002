$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

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
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

$(call inherit-product-if-exists, vendor/nvidia/harmony/harmony-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nvidia/harmony/overlay

# Include packages
PRODUCT_PACKAGES += \
    librs_jni \
    gralloc.default \
    gralloc.tegra \
    overlay.tegra \
    lights.tegra \
    sensors.tegra \
    audiofix.harmony

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
	LOCAL_KERNEL := device/nvidia/harmony/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Set property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_harmony
PRODUCT_DEVICE := harmony
