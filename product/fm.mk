# Package
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wileyfox/porridge/lib/hw/radio.fm.mt6735.so:system/lib/hw/radio.fm.mt6755.so
    
# Radio dependencies
PRODUCT_PACKAGES += \
    muxreport \
    terservice