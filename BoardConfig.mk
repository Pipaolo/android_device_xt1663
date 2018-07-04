#
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

# Device path
LOCAL_PATH := device/motorola/XT1663

# Device board elements
include $(LOCAL_PATH)/PlatformConfig.mk
include $(LOCAL_PATH)/board/*.mk

# Device vendor board
-include vendor/motorola/XT1663/BoardConfigVendor.mk

#######################################################################
MTK_PROJECT_CONFIG ?= $(LOCAL_PATH)/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)

MTK_INTERNAL_CDEFS := $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))

BOARD_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
BOARD_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# system.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb3/musb-hdrc/gadget/lun%d/file

# Includes
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# init
TARGET_PROVIDES_INIT_RC := true

# Audio
BOARD_USES_MTK_AUDIO := true

MTK_MEDIA_PROFILES := true
BOARD_USES_MTK_MEDIA_PROFILES := true
BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL

# Fix video autoscaling on old OMX decoders
TARGET_OMX_LEGACY_RESCALING:=true
TARGET_USES_MEDIA_EXTENSIONS := true