LOCAL_PATH := $(call my-dir)

# base of the Vulkan-Samples repository
BASE_DIR := ../../../../../../../..

include $(CLEAR_VARS)

LOCAL_MODULE			:= atw_opengl
LOCAL_C_INCLUDES		:= $(BASE_DIR)/external/include
LOCAL_SRC_FILES			:= ../../../../../atw_opengl.c
LOCAL_CFLAGS			:= -std=c99 -O3 -Wall
LOCAL_LDLIBS			:= -llog -landroid -lEGL -lGLESv3
LOCAL_STATIC_LIBRARIES	:= android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
