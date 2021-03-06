# Copyright (C) 2016 The CyanogenMod Project
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
# BoardConfig.mk
#

-include device/samsung/msm7627a-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/delos3geur/BoardConfigVendor.mk

LOCAL_PATH := device/samsung/delos3geur

# Assert
TARGET_OTA_ASSERT_DEVICE := delos3geur,GT-I8552b,I8552,msm7x27a

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

#TWRP
DEVICE_RESOLUTION := 480x800
