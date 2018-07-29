LOCAL_PATH := $(call my-dir)

#---------------------------------------------------------------------------------------------------

# Audio
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_audio
LOCAL_SRC_FILES := audio/audio.cpp
LOCAL_PROPRIETARY_MODULE := true
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

# Camera
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_camera
LOCAL_SRC_FILES := camera/camera.cpp
LOCAL_SHARED_LIBRARIES := libdpframework
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------------------------------------------

# GUI
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_gui
LOCAL_SRC_FILES := gui/gui.cpp
LOCAL_SHARED_LIBRARIES := libgui
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------------------------------------------

# Log
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_log
LOCAL_SRC_FILES := log/log.c
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------------------------------------------

# OMX
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_omx
LOCAL_SRC_FILES := omx/omx.cpp
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

#---------------------------------------------------------------------------------------------------

# UI
include $(CLEAR_VARS)
LOCAL_MODULE := libshim_ui
LOCAL_SRC_FILES := ui/ui.cpp
LOCAL_SHARED_LIBRARIES := libui
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

