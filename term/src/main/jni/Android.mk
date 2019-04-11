LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libjackpal-androidterm5
LOCAL_LDFLAGS := -Wl,--build-id -shared
LOCAL_LDLIBS := -llog -lc

LOCAL_SRC_FILES := \
	common.cpp \
	fileCompat.cpp \
	termExec.cpp

LOCAL_ADDITIONAL_DEPENDENCIES := $(shell test -d $(LOCAL_PATH)/../libs || mkdir $(LOCAL_PATH)/../libs)

NDK_LIBS_OUT := $(LOCAL_PATH)/../../libs
NDK_OUT := obj
NDK_APP_LIBS_OUT := $(LOCAL_PATH)/../../libs
LOCAL_C_INCLUDES += $(LOCAL_PATH)/

include $(BUILD_SHARED_LIBRARY)
