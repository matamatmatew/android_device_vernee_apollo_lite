LOCAL_PATH := $(call my-dir)


# Audio
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_audio

LOCAL_SRC_FILES := \
    audio/audio.cpp \
    audio/icu55.c

LOCAL_SHARED_LIBRARIES := libicuuc
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------------------------------------------

# Bionic
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_bionic
LOCAL_SRC_FILES := bionic/bionic.cpp
LOCAL_SHARED_LIBRARIES := libc
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------------------------------------------

# GPS
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_gps

LOCAL_SRC_FILES := \
    gps/icu53.c \
    gps/icu55.c \
    gps/ssl.c

LOCAL_SHARED_LIBRARIES := \
    libicuuc \
    libssl

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------------------------------------------

# UI
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_ui
LOCAL_SRC_FILES := ui/ui.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libui

LOCAL_CFLAGS := \
    -O3 \
    -Wno-unused-variable \
    -Wno-unused-parameter

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------------------------------------------

# XLog
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_xlog
LOCAL_SRC_FILES := xlog/xlog.c
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

