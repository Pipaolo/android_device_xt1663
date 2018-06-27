# Hardware-specific permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/prebuilt/org.apache.http.legacy.jar:system/framework/org.apache.http.legacy.jar \

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/ProjectConfig.mk:system/vendor/data/misc/ProjectConfig.mk

PRODUCT_PACKAGES += \
   libmtk_symbols \
   libstlport \
   libmtkshim_uiext \
   libmtkshim_guiext \
   libui_ext

# Vibrator HAL
 PRODUCT_PACKAGES += \
	 vibrator.default

#Symbols
LINKER_FORCED_SHIM_LIBS := /system/vendor/lib64/libui_ext.so|libmtkshim_uiext.so:/system/vendor/lib/libui_ext.so|libmtkshim_uiext.so:/system/lib/libgui.so|libmtk_symbols.so:/system/lib64/libgui.so|libmtk_symbols.so
LINKER_FORCED_SHIM_LIBS += $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libgui_ext.so|libmtkshim_guiext.so:/system/vendor/lib64/libgui_ext.so|libmtkshim_guiext.so
LINKER_FORCED_SHIM_LIBS += $(LINKER_FORCED_SHIM_LIBS):/system/vendor/bin/vtservice|libmtk_symbols.so
LINKER_FORCED_SHIM_LIBS += $(LINKER_FORCED_SHIM_LIBS):/system/vendor/bin/program_binary_builder|libmtk_symbols.so


# # Doze Package
# PRODUCT_PACKAGES += \
#    Doze
