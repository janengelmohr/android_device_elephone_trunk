#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (c) 2015 mdeejay (mdjrussia@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FORCE_32_BIT := true
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

-include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/ark/benefit

TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Kernel
#BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/test
TARGET_KERNEL_CONFIG := cyanogenmod_ark_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(PWD)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8-uber/bin/arm-eabi-

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
BOARD_CAMERA_SENSORS := s5k4h5_8916 gc2355
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Disable Jack & Jill compilation
ANDROID_COMPILE_WITH_JACK := false

# Radio
TARGET_RIL_VARIANT := caf

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# GPS
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 335544320
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5939100672

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP
RECOVERY_VARIANT := twrp
RECOVERY_FSTAB_VERSION := 2
HAVE_SELINUX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION := 720x1280
TW_TARGET_USES_QCOM_BSP := true
TW_NEW_ION_HEAP := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_THEME := material_dark
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_UNMOUNT_FIRMWARE_ON_BOOT := true

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/ark/benefit/BoardConfigVendor.mk
