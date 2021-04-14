#
# Copyright (C) 2015 The CyanogenMod Project
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

# This file includes all definitions that apply to ALL xt925 devices, and
# are also specific to xt925 devices
#
# Everything in this directory will become public

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/samsung/msm7627a-common/msm7627a.mk)

LOCAL_PATH := device/samsung/delos3geur

# delos3geur specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=3 \
    telephony.lteOnCdmaDevice=0 \
    telephony.lteOnGsmDevice=1

$(call inherit-product, vendor/samsung/delos3geur/delos3geur-vendor.mk)
