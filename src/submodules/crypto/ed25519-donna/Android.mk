LOCAL_PATH:= $(call my-dir)
include $($CLEAR_VARS)

LOCAL_MODULE:= ed25519
LOCAL_MODULE_FILENAME:= libed25519

OPENSSL_INCLUDE := 

ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
OPENSSL_INCLUDE := /home/izak/openssl-android-bin/arm64-21/include
endif

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
OPENSSL_INCLUDE := /home/izak/openssl-android-bin/arm-16/include
endif

ifeq ($(TARGET_ARCH_ABI),x86)
OPENSSL_INCLUDE := /home/izak/openssl-android-bin/x86-16/include
endif

ifeq ($(TARGET_ARCH_ABI),x86_64)
OPENSSL_INCLUDE := /home/izak/openssl-android-bin/x86_64-21/include
endif


LOCAL_C_INCLUDES:= \
${OPENSSL_INCLUDE} \
${ED25519_LIB_ROOT}/ed25519-donna-portable.h \
${ED25519_LIB_ROOT}/ed25519-hash-custom.h \
${ED25519_LIB_ROOT}/ed25519-randombytes-custom.h \
${ED25519_LIB_ROOT}/ed25519.h \

LOCAL_SRC_FILES := \
${ED25519_LIB_ROOT}/ed25519.c \

include $(BUILD_STATIC_LIBRARY)
