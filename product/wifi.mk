# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# Packages
PRODUCT_PACKAGES += \
   libwpa_client \
    hostapd \
    wpa_supplicant \
    lib_driver_cmd_mt66xx
