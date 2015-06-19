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

# Default value, if not overridden else where.
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/samsung/p4-common/bluetooth

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
BOARD_USES_GENERIC_AUDIO := false
USE_CAMERA_STUB := false

# KitKat flags
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
ICS_CAMERA_BLOB := true
BOARD_CAMERA_HAVE_ISO := true
BOARD_USES_PROPRIETARY_OMX := TF101
BOARD_NEEDS_OLD_HWC_API := true
#BOARD_NEED_OMX_COMPAT := true
#BOARD_EGL_NEEDS_FNW := true
#NEED_WORKAROUND_CORTEX_A9_745320 := true
#BOARD_USES_PROPRIETARY_LIBCAMERA := true
#BOARD_SECOND_CAMERA_DEVICE := true
#USE_CAMERA_STUB := true
#BOARD_VENDOR_USE_NV_CAMERA := true

# Lollipop
TARGET_32_BIT_SURFACEFLINGER := true
MALLOC_IMPL := dlmalloc
BOARD_USES_LEGACY_MMAP := true
BOARD_HAVE_SAMSUNG_T20_HWCOMPOSER := true
COMMON_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
TARGET_ENABLE_NON_PIE_SUPPORT := true

OTA_EXTRA_OPTIONS := -r

# Lollipop charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
# This is from CyanogenMod 12.0
CHARGING_ENABLED_PATH :=  "/sys/class/power_supply/battery/charging_mode_booting"

# USE_PREBUILT_CHROMIUM := 1
# Force using the prebuilts
# PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Optimization hwui
HWUI_COMPILE_FOR_PERF := true

# Flash compatibility
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_CPU_VARIANT := generic
# TARGET_CPU_VARIANT := cortex-a9
# TARGET_CPU_VARIANT := tegra2
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
#TARGET_HAVE_TEGRA_ERRATA_657451 := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true
ARCH_ARM_HIGH_OPTIMIZATION := true

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_CMDLINE := 
BOARD_PAGE_SIZE := 2048

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := t20
TARGET_BOOTLOADER_BOARD_NAME := p3
#TARGET_BOARD_INFO_FILE := device/samsung/p4-common/board-info.txt

# BOARD_EGL_NEEDS_LEGACY_FB := true
# MAX_EGL_CACHE_KEY_SIZE := 4096
# MAX_EGL_CACHE_SIZE := 2146304
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
# TARGET_DISABLE_TRIPLE_BUFFERING := false
BOARD_EGL_CFG := device/samsung/p4-common/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true
# https://android.googlesource.com/platform/frameworks/native/+/201f3b2da572eb27b9d4b3131e6d8c3c92a13de8
# BOARD_ALLOW_EGL_HIBERNATION := true

#BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
BOARD_USES_HWCOMPOSER := true
USE_OPENGL_RENDERER := true
# Enable WEBGL in WebKit
ENABLE_WEBGL := true

### Audio ###
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true
# ICS audio
# COMMON_GLOBAL_CFLAGS += -DICS_AUDIO_BLOB
# COMMON_GLOBAL_CFLAGS += -DAUDIO_LEGACY_HACK
# USE_LEGACY_AUDIO_POLICY := 1

# skia SIGILL bootloop fix
COMMON_GLOBAL_CFLAGS += -DOLD_TEGRA


# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true

# device-specific extensions to the updater binary
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/p4-common
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 4096

# Wifi related defines
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_LEGACY_NL80211_STA_EVENTS := true
BOARD_HAVE_SAMSUNG_WIFI     := true
BOARD_NO_WIFI_HAL           := true

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "iface_name=wlan0 firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#BOARD_LIB_DUMPSTATE := libdumpstate.ventana

# Use nicer font rendering
BOARD_USE_SKIA_LCDTEXT := true

# Charging Mode (LPM)
BOARD_CHARGING_MODE_BOOTING_LPM := "/sys/class/power_supply/battery/charging_mode_booting"

# Preload bootanimation in to memory
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true
#BOARD_NEEDS_LOWFPS_BOOTANI := true

# Suppress EMMC WIPE
BOARD_SUPPRESS_EMMC_WIPE := true

# Skip SELinux metadata
# SKIP_SET_METADATA := true

# Android system toolchain
# TARGET_GCC_VERSION_EXP := 4.8
# TARGET_TOOLCHAIN_ROOT := prebuilts/gcc/$(HOST_PREBUILT_TAG)/arm/linaro-arm-eabi-$(TARGET_GCC_VERSION)
# TARGET_TOOLS_PREFIX := $(TARGET_TOOLCHAIN_ROOT)/bin/arm-linux-gnueabi-

# Kernel toolchain
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
# TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-cortex-linux-gnueabi-linaro_4.9.3-2015.03

# Add backup-tool.sh to install script
BACKUP_TOOL := true

BOARD_SEPOLICY_DIRS += \
	device/samsung/p4-common/sepolicy \

BOARD_SEPOLICY_UNION += \
	bluetooth.te \
	device.te \
	debuggerd.te \
	drmserver.te \
	gpsd.te \
	file.te \
	file_contexts \
	healthd.te \
	init.te \
	init_shell.te \
	keystore.te \
	macloader.te \
	mediaserver.te \
	rild.te \
	service_contexts \
	servicemanager.te \
	surfaceflinger.te \
	system_app.te \
	system_server.te \
	wpa.te \
	ueventd.te \
	untrusted_app.te \
	vold.te


### Recovery
TARGET_RECOVERY_FSTAB := device/samsung/p4-common/recovery/fstab.p3

### TWRP

# custom recovery ui
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_ventana

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/p4-common/recovery/recovery_ui.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Custom graphics for recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/p4-common/recovery/graphics.c

#we don't have cpu temperature only battery temperature :-(
HAVE_SELINUX := true
DEVICE_RESOLUTION := 1280x800
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_REBOOT_BOOTLOADER := true
# TW_ALWAYS_RMRF := true
TW_FLASH_FROM_STORAGE := true
TW_HAS_DOWNLOAD_MODE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
TW_BRIGHTNESS_PATH := "/sys/devices/platform/cmc623_pwm_bl/backlight/pwm-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
#TW_USE_TOOLBOX := true #causes weirdness. do not use. kill supersu instead
TW_NO_USB_STORAGE := true
TW_EXCLUDE_SUPERSU := true
#in the ongoing battle to reduce recovery size no true type font
# TW_DISABLE_TTF := true

# TARGET_USERIMAGES_USE_F2FS := false
# TW_EXCLUDE_ENCRYPTED_BACKUPS := true
# TW_INCLUDE_CRYPTO := false

# TW_INCLUDE_CRYPTO := true
# TW_INCLUDE_L_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p8"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,journal_async_commit,errors=panic      wait,check,encryptable=footer"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
# TWRP_EVENT_LOGGING := true
# TW_EXCLUDE_MTP := true

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5583457484
TW_EXTRA_RECOVERY_PARTITION := true


# MultiROM config. MultiROM also uses parts of TWRP config
MR_INPUT_TYPE := type_p75xx
MR_INIT_DEVICES := device/samsung/p4-common/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_MUL := 0.5
MR_DPI_FONT := 160
MR_FSTAB := device/samsung/p4-common/twrp.fstab
MR_KEXEC_MEM_MIN := 0x1FF00000
MR_INFOS := device/samsung/p4-common/mrom_infos
