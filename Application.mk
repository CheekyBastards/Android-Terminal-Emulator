APP_STL := c++_shared
APP_ABI := armeabi-v7a arm64-v8a x86 x86_64
APP_CPPFLAGS += -std=c++11
APP_PLATFORM := android-27
NDK_PROJECT_PATH := $(LOCAL_PATH)
APP_BUILD_SCRIPT := $(NDK_PROJECT_PATH)/Android.mk
