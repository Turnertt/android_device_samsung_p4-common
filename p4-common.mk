#
# Copyright (C) 2011 The Android Open-Source Project
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
#

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := xlarge mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

PRODUCT_PACKAGES := \
    fstab.p3 \
    init.p3.rc \
    init.p3.usb.rc \
    init.modem.rc \
    ueventd.p3.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    $(LOCAL_PATH)/keylayout/sec_power_key.kl:system/usr/keylayout/sec_power_key.kl \
    $(LOCAL_PATH)/keylayout/sec_keyboard.kl:system/usr/keylayout/sec_keyboard.kl \
    $(LOCAL_PATH)/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
    $(LOCAL_PATH)/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/gps.conf:system/etc/gps.conf \
     $(LOCAL_PATH)/prebuilt/bin/gps_daemon.sh:system/bin/gps_daemon.sh

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.sf.lcd_density=160 \
    dalvik.vm.dex2oat-flags=--compiler-backend=Quick \
    dalvik.vm.backgroundgctype=SS \
    debug.hwui.render_dirty_regions=false \
    ro.zygote.disable_gl_preload=true \
    persist.sys.media.legacy-drm=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sdcardfs.enable=true

# Nvidia hardcoded this to 2k in ICS frameworks/base
# Google has provided this system prop to set the max texture size
PRODUCT_PROPERTY_OVERRIDES += \
    sys.max_texture_size=2048

# Prompt for USB debugging authentication
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=1 \
    ro.secure=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    macloader

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/bcmdhd_apsta.bin:system/etc/wifi/bcmdhd_apsta.bin \
    $(LOCAL_PATH)/wifi/bcmdhd_p2p.bin:system/etc/wifi/bcmdhd_p2p.bin \
    $(LOCAL_PATH)/wifi/bcmdhd_sta.bin:system/etc/wifi/bcmdhd_sta.bin \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \

PRODUCT_PACKAGES += \
        libinvensense_mpl

# Charger images
PRODUCT_PACKAGES += \
        charger_res_images

PRODUCT_PACKAGES += \
    hwcomposer.tegra \
    libstagefrighthw \
    camera.tegra

# Audio
# PRODUCT_PACKAGES += \
#    audio.a2dp.default \
#    audio.usb.default \
#    libaudioutils \
#    libtinyalsa
PRODUCT_PACKAGES += \
    audio.primary.tegra \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default

# audio mixer paths
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/libaudio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/audio/asound.conf:system/etc/asound.conf \
        $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
        $(LOCAL_PATH)/audio/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
        $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/nvcamera.conf:system/etc/nvcamera.conf \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

PRODUCT_CHARACTERISTICS := tablet,nosdcard

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    power.p3 \
    libnetcmdiface \
    WiFiDirectDemo

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    mkfs.f2fs \
    fsck.f2fs

# Preload compability symbols
PRODUCT_PACKAGES += \
    libdgv1 \
    libnvshim \
    libp4shim \
    libp4utl

DEVICE_PACKAGE_OVERLAYS := \
    $(LOCAL_PATH)/overlay

# Recovery
PRODUCT_COPY_FILES += $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, frameworks/native/build/tablet-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/decatf/config/common.mk)
