LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on
OPENCV_ANDROID_SDK := /Users/lvliang/Tools/OpenCV-android-sdk341
include $(OPENCV_ANDROID_SDK)/sdk/native/jni/OpenCV.mk

LOCAL_SRC_FILES  := $(LOCAL_PATH)/com_example_lvliang_helloopencv_OpenCVClass.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_LDLIBS     += -llog -ldl

LOCAL_MODULE     := OpenCVLibs

include $(BUILD_SHARED_LIBRARY)
