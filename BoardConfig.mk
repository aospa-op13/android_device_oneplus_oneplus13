#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_SUPER_PARTITION_SIZE := 13329498112

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8750-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/oneplus13

# Assert
TARGET_OTA_ASSERT_DEVICE := OnePlus13

# Display
TARGET_SCREEN_DENSITY := 640

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Vibrator
SOONG_CONFIG_NAMESPACES += OPLUS_AOSPA_VIBRATOR_HAL
SOONG_CONFIG_OPLUS_AOSPA_VIBRATOR_HAL := USE_EFFECT_STREAM
SOONG_CONFIG_OPLUS_AOSPA_VIBRATOR_HAL_USE_EFFECT_STREAM := true
SOONG_CONFIG_OPLUS_AOSPA_VIBRATOR_HAL_INCLUDE_DIR := $(LOCAL_PATH)/vibrator/include

# Include the proprietary files BoardConfig.
include vendor/oneplus/oneplus13/BoardConfigVendor.mk
