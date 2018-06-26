#
# Copyright (C) 2015-2016 The CyanogenMod Project
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

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi 280dpi hdpi tvdpi mdpi ldpi

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifneq ($(TARGET_BUILD_VARIANT), user)
# ADB Debugging
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
	ro.mtk_gps_support=1 \
	ro.mtk_agps_app=1 \
    ro.secure=0
endif

# Device product elements
include $(LOCAL_PATH)/product/*.mk

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-4096-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-4096-hwui-memory.mk)

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/motorola/XT1663/XT1663-vendor.mk)

# Audio
$(call inherit-product, $(LOCAL_PATH)/configs/audio/audio_param/audio.mk)

# Bluetooth
$(call inherit-product, $(LOCAL_PATH)/bluetooth/bluetooth.mk)

# Carrier configs
$(call inherit-product, $(LOCAL_PATH)/configs/carrier/carrier.mk)

# Media
$(call inherit-product, $(LOCAL_PATH)/configs/media/media.mk)

# Internet access
$(call inherit-product, $(LOCAL_PATH)/configs/ip/ip.mk)

# Thermal configuration
$(call inherit-product, $(LOCAL_PATH)/configs/thermal/thermal.mk)

# Other configuration files
$(call inherit-product, $(LOCAL_PATH)/configs/configs.mk)
