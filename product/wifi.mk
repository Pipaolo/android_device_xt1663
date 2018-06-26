# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# Packages
PRODUCT_PACKAGES += \
    libwpa_client \
    lib_driver_cmd_mt66xx \
    hostapd \
    wpa_supplicant

# Configurations
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
		$(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
		$(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
		$(LOCAL_PATH)/configs/throttle.sh:system/vendor/etc/throttle.sh
