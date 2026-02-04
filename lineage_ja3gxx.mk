# Copyright (C) 2013-2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ja3gxx device
$(call inherit-product, device/samsung/ja3gxx/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := lineage_ja3gxx
PRODUCT_DEVICE := ja3gxx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9500

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ja3gxx \
    TARGET_DEVICE=ja3gxx \
    PRIVATE_BUILD_DESC="ja3gxx-user 5.0.1 LRX22C I9500XXUHOG1 release-keys"

BUILD_FINGERPRINT := "samsung/ja3gxx/ja3g:5.0.1/LRX22C/I9500XXUHOG1:user/release-keys"
