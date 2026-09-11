#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

MIUICAMERA_PATH := device/xiaomi/dash-miuicamera
CAMERA_PACKAGE_NAME := com.android.camera

# Properties
TARGET_SYSTEM_EXT_PROP += $(MIUICAMERA_PATH)/system_ext.prop

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(MIUICAMERA_PATH)/configs/hidl/framework_compatibility_matrix.xml

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(MIUICAMERA_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(MIUICAMERA_PATH)/sepolicy/private

# Inherit from the proprietary version
include vendor/xiaomi/dash-miuicamera/BoardConfigVendor.mk
