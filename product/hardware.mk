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
LINKER_FORCED_SHIM_LIBS += $(LINKER_FORCED_SHIM_LIBS):/system/lib/libandroid_runtime.so|libmtk_symbols.so:/system/lib64/libandroid_runtime.so|libmtk_symbols.so
LINKER_FORCED_SHIM_LIBS += $(LINKER_FORCED_SHIM_LIBS):/system/vendor/bin/mtkmal|libmtk_symbols.so
