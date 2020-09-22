LOCAL_PATH:= $(call my-dir)
include $($CLEAR_VARS)

LOCAL_MODULE:= argon2
LOCAL_MODULE_FILENAME:= libargon2
#LOCAL_C_INCLUDES:= /home/izak/android/ndk/19.2.5345600/sources/android/cpufeatures/

LOCAL_C_INCLUDES:= \
${ARGON2_LIB_ROOT}/include \
${ARGON2_LIB_ROOT}/src \
${BLAKE2_LIB_ROOT}

ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
ARGON_CORE := ${ARGON2_LIB_ROOT}/src/ref.c
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
ARGON_CORE := ${ARGON2_LIB_ROOT}/src/ref.c
endif

ifeq ($(TARGET_ARCH_ABI),x86)
ARGON_CORE := ${ARGON2_LIB_ROOT}/src/opt.c
endif

ifeq ($(TARGET_ARCH_ABI),x86_64)
ARGON_CORE := ${ARGON2_LIB_ROOT}/src/opt.c
endif

LOCAL_SRC_FILES := \
${ARGON2_LIB_ROOT}/src/argon2.c \
${ARGON2_LIB_ROOT}/src/core.c \
${ARGON2_LIB_ROOT}/src/thread.c \
${ARGON2_LIB_ROOT}/src/encoding.c \
${ARGON_CORE} \



include $(BUILD_STATIC_LIBRARY)
