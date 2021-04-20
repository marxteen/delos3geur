#
# Copyright 2014 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, device/samsung/kernel/kernel.mk)
# Inherit from d9 device
$(call inherit-product, device/samsung/delos3geur/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := delos3gub
PRODUCT_DEVICE := delos3geur
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := SAMSUNG
PRODUCT_MODEL := GT-I8552

# Web Rendering
PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

# Correct bootanimation size for the screen
#TARGET_BOOTANIMATION_NAME := 480x800
TARGET_BOOTANIMATION_NAME :=
# Release name
PRODUCT_RELEASE_NAME := GalaxyGrandQuattro

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

PRODUCT_GMS_CLIENTID_BASE := android-google
