LOCAL_PATH:= $(call my-dir)
include $($CLEAR_VARS)

LOCAL_MODULE:= lmdb
LOCAL_MODULE_FILENAME:= liblmdb

LOCAL_C_INCLUDES:= \
${LMDB_LIB_ROOT}/lmdb.h \

LOCAL_SRC_FILES := \
${LMDB_LIB_ROOT}/mdb.c \
${LMDB_LIB_ROOT}/midl.c \

include $(BUILD_STATIC_LIBRARY)
