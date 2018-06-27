LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    icu55.c \
    mtk_audio.cpp \
    mtk_bionic.cpp \
    mtk_gui.cpp \
    mtk_omx.cpp \
    mtk_ui.cpp \
    mtk_wvm.cpp \
    mtk_xlog.cpp \
		program_binary_builder.cpp \
		vtservice.cpp

# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp

LOCAL_C_INCLUDES += \
    frameworks/av

LOCAL_SHARED_LIBRARIES := libbinder libc liblog libgui libui libicuuc libicui18n libmedia
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	mtk_uiext.cpp
LOCAL_SHARED_LIBRARIES := libui_ext
LOCAL_MODULE := libmtkshim_uiext
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	mtk_guiext.cpp
LOCAL_SHARED_LIBRARIES := libui
LOCAL_MODULE := libmtkshim_guiext
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
