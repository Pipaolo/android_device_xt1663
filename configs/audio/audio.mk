#
# Copyright (C) 2018 Tobias Tefke
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

# Copy configuration files
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml \
    device/motorola/XT1663/configs/audio/a2dp_audio_policy_configuration.xml:system/etc/a2dp_audio_policy_configuration.xml \
    device/motorola/XT1663/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    device/motorola/XT1663/configs/audio/audio_param/audio_device.xml:system/vendor/etc/audio_device.xml \
    device/motorola/XT1663/configs/audio/audio_param/audio_em.xml:system/vendor/etc/audio_em.xml \
    device/motorola/XT1663/configs/audio/audio_param/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/motorola/XT1663/configs/audio/audio_param,system/vendor/etc/audio_param)   

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true
