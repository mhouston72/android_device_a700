# Copyright (C) 2011 The Android Open Source Project
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

# Use the non-open-source part, if present
-include vendor/allwinner/nuclear_inet/BoardConfigVendor.mk

# Use the part that is common between all allwinner
include device/allwinner/common/BoardConfig.mk

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/allwinner/nuclear_inet/recovery_keys.c

TARGET_KERNEL_CONFIG := sun51_defconfig

SW_BOARD_USES_GSENSOR_TYPE := bma250
SW_BOARD_GSENSOR_XY_REVERT := true
SW_BOARD_GSENSOR_DIRECT_X := true
SW_BOARD_GSENSOR_DIRECT_Y := true

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Camera
USE_CAMERA_STUB := false
BOARD_HAVE_FRONT_CAM :=true
BOARD_HAVE_BACK_CAM :=false

# Touchscreen
TARGET_TOUCH_CALIBRATION_METHOD := none

# Amlogic stuff
BOARD_PROVIDES_MALI := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_VFP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true
TARGET_SIMULATOR := false
TARGET_PROVIDES_INIT_RC := true

# CWM
#TARGET_RECOVERY_INITRC := device/ainol/elf2/recovery.init.rc
#BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"

TARGET_BOOTANIMATION_PRELOAD := true

TARGET_PREBUILT_KERNEL := device/allwinner/nuclear_inet/kernel

