#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

LOCAL_PATH := device/samsung/ja3gxx

# overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths_0.xml

PRODUCT_PACKAGES += \
    AudioWorkaround

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.cer:system/etc/gps.cer \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps.xml:system/etc/gps.xml

PRODUCT_PACKAGES += \
    libdmitry

# Radio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init/rild.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/rild.rc

# Ramdisk
PRODUCT_PACKAGES += \
    init.baseband.rc

# call the proprietary setup
$(call inherit-product, vendor/samsung/ja3gxx/ja3gxx-vendor.mk)
