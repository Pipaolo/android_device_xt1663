LOCAL_PATH := $(call my-dir)

# /system/vendor/lib64/libui_ext.so ( _ZN7android13GraphicBufferC1Ejjij )
include $(CLEAR_VARS)
LOCAL_SRC_FILES := GraphicBuffer.cpp
LOCAL_SHARED_LIBRARIES := libui
LOCAL_MODULE := libshim_ui
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# /system/vendor/lib,lib64/libgui_ext.so ( _ZN7android11IDumpTunnel11asInterfaceERKNS_2spINS_7IBinderEEE )
include $(CLEAR_VARS)
LOCAL_SRC_FILES := gui.cpp
LOCAL_SHARED_LIBRARIES := libui
LOCAL_MODULE := libshim_gui
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

/system/vendor/lib/libcam.camadapter.so ( _ZN7android16CameraParameters25KEY_SNAPSHOT_PICTURE_FLIPE )
include $(CLEAR_VARS)
LOCAL_SRC_FILES := camera.cpp
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# /system/vendor/bin/thermal ( ifc_set_txq_state )
include $(CLEAR_VARS)
LOCAL_SRC_FILES := netutils.c
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE := libshim_ifc
LOCAL_C_INCLUDES += system/core/libnetutils/include
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
