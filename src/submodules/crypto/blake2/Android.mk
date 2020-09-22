LOCAL_PATH:= $(call my-dir)
include $($CLEAR_VARS)

LOCAL_MODULE:= blake2
LOCAL_MODULE_FILENAME:= libblake2
#LOCAL_C_INCLUDES:= /home/izak/android/ndk/19.2.5345600/sources/android/cpufeatures/

LOCAL_C_INCLUDES:= \
${BLAKE2_LIB_ROOT}/blake2-config.h \
${BLAKE2_LIB_ROOT}/blake2-impl.h \
${BLAKE2_LIB_ROOT}/blake2.h \

ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
LOCAL_SRC_FILES := ${BLAKE2_LIB_ROOT}/blake2b-ref.c
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_SRC_FILES := ${BLAKE2_LIB_ROOT}/blake2b-ref.c
endif

ifeq ($(TARGET_ARCH_ABI),x86)
LOCAL_SRC_FILES := ${BLAKE2_LIB_ROOT}/blake2b.c
endif

ifeq ($(TARGET_ARCH_ABI),x86_64)
LOCAL_SRC_FILES := ${BLAKE2_LIB_ROOT}/blake2b.c
endif

include $(BUILD_STATIC_LIBRARY)
