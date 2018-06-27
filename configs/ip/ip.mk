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

# Copy configuration files for internet access
PRODUCT_COPY_FILES += \
    device/motorola/XT1663/configs/ip/clatd.conf:system/etc/clatd.conf \
    device/motorola/XT1663/configs/ip/custom.conf:system/vendor/etc/custom.conf \
    device/motorola/XT1663/configs/ip/ipsec.conf:system/vendor/etc/ipsec/ipsec.conf \
    device/motorola/XT1663/configs/ip/strongswan.conf:system/vendor/etc/ipsec/strongswan.conf \
    device/motorola/XT1663/configs/ip/updown_script:system/vendor/etc/ipsec/updown_script \
    device/motorola/XT1663/configs/ip/wod_cust.conf:system/vendor/etc/ipsec/wod_cust.conf \
    device/motorola/XT1663/configs/ip/wod_optr.conf:system/vendor/etc/ipsec/wod_optr.conf \
    device/motorola/XT1663/configs/ip/openssl.cnf:system/vendor/etc/ipsec/ssl/openssl.cnf \
    device/motorola/XT1663/configs/ip/slp_conf:system/vendor/etc/slp_conf \
    
    
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/motorola/XT1663/configs/ip/wide-dhcpv6,system/vendor/etc/wide-dhcpv6)  
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/motorola/XT1663/configs/ip/radvd,system/vendor/etc/radvd)  
