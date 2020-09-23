LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= nanocrypto
LOCAL_MODULE_FILENAME := libnanocrypto

LOCAL_C_INCLUDES:= \
${NANONODE_ROOT} \
${NANOCRYPTO_LIB_ROOT}/random_pool.hpp \
${NANOCRYPTO_LIB_ROOT}/random_pool_shuffle.hpp \

LOCAL_SRC_FILES:= \
${NANOCRYPTO_LIB_ROOT}/interface.cpp \
${NANOCRYPTO_LIB_ROOT}/random_pool.cpp \

LOCAL_STATIC_LIBRARIES:= libcryptopp libblake2

include $(BUILD_STATIC_LIBRARY)
