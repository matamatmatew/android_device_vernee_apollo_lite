LOCAL_PATH := device/vernee/apollo_lite


# Device Configuration for Vernee Apollo Lite


# ADB on Boot
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1


# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.default

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml


# Bluetooth
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml


# Camera
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_PACKAGES += \
    Snap


# Charger
PRODUCT_PACKAGES += \
    charger


# Codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml


# Connectivity
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_PACKAGES += \
    messaging 


# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=1 \
    persist.service.acm.enable=0 \
    persist.sys.dun.override=0


# Display
PRODUCT_PACKAGES += \
    libion

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml


# Filesystem Management Tools
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs

PRODUCT_PACKAGES += \
    fsck.f2fs \
    mkfs.f2fs \
    mount.f2fs

PRODUCT_PACKAGES += \
    fsck.exfat \
    mkfs.exfat \
    mount.exfat

PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs


# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml


# FMRadio
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio


# GPS
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml


# Mediatek
PRODUCT_PACKAGES += \
    libstlport


# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml


# Power
PRODUCT_PACKAGES += \
    power.default \
    power.mt6797


# Radio Dependencies
PRODUCT_PACKAGES += \
    muxreport \
    terservice


# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/fstab.mt6797:root/fstab.mt6797 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6797.rc:root/init.mt6797.rc \
    $(LOCAL_PATH)/rootdir/init.mt6797.usb.rc:root/init.mt6797.usb.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6797.rc:root/ueventd.mt6797.rc


# Recovery-Allowed Devices
TARGET_OTA_ASSERT_DEVICE := apollo_lite,k15tb_a


# Screen Density
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi


# Sensors
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml

PRODUCT_PACKAGES += \
    libem_sensor_jni


# Shims
PRODUCT_PACKAGES += libshim_audio
LINKER_FORCED_SHIM_LIBS := /system/lib/hw/audio.primary.mt6797.so|libshim_audio.so

PRODUCT_PACKAGES += libshim_bionic
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libc.so|libshim_bionic.so
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib64/libc.so|libshim_bionic.so

PRODUCT_PACKAGES += libshim_gps
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/bin/mtk_agpsd|libshim_gps.so

PRODUCT_PACKAGES += libshim_ui
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libui.so|libshim_ui.so
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib64/libui.so|libshim_ui.so

PRODUCT_PACKAGES += libshim_xlog
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/liblog.so|libshim_xlog.so
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib64/liblog.so|libshim_xlog.so


# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true


# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab


# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    librs_jni

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml


# VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml


# Vulkan
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml


# Wallpaper Picker
PRODUCT_PACKAGES += \
    WallpaperPicker


# WIFI
PRODUCT_PACKAGES += \
    hostapd \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    wpa_supplicant

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml


# Configurations for Dalvik Heap, HWUI Memory and Vendor Blobs
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-4096-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-4096-hwui-memory.mk)
$(call inherit-product, vendor/vernee/apollo_lite/apollo_lite-vendor.mk)

