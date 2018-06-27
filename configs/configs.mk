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

# Copy config files which aren't included by anything else
# ProjectConfig.mk and system.prop are included by other scripts
PRODUCT_COPY_FILES += \
    device/motorola/XT1663/configs/Conf_MultipleTest.ini:system/etc/Conf_MultipleTest.ini \
    device/motorola/XT1663/configs/disableapplist.txt:system/vendor/etc/disableapplist.txt \
    device/motorola/XT1663/configs/event-log-tags:system/etc/event-log-tags \
    device/motorola/XT1663/configs/aee-config:system/vendor/etc/aee-config \
    device/motorola/XT1663/configs/factory.ini:system/vendor/etc/factory.ini \
    device/motorola/XT1663/configs/fm_cust.cfg:system/vendor/firmware/fm_cust.cfg \
    device/motorola/XT1663/configs/mtklog-config.prop:system/vendor/etc/mtklog-config.prop \
    device/motorola/XT1663/configs/perfcontable.txt:system/vendor/etc/perfcontable.txt \
    device/motorola/XT1663/configs/partition_permission.sh:system/vendor/etc/partition_permission.sh \
    device/motorola/XT1663/configs/perfservapplist.txt:system/vendor/etc/perfservapplist.txt \
    device/motorola/XT1663/configs/perfservscntbl.txt:system/vendor/etc/perfservscntbl.txt \
    device/motorola/XT1663/configs/recovery.fstab:system/vendor/etc/recovery.fstab \
    device/motorola/XT1663/configs/resmonwhitelist.txt:system/vendor/etc/resmonwhitelist.txt \
    device/motorola/XT1663/configs/emdlogger_usb_config.prop:system/vendor/etc/emdlogger_usb_config.prop

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/motorola/XT1663/configs/thermal,system/vendor/etc/.tp)  
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/motorola/XT1663/configs/wifi,system/etc/wifi)  

