LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= compute
LOCAL_C_INCLUDES:= ${BOOST_INCLUDE_PATH}
LOCAL_SRC_FILES:= compute.c
#LOCAL_SRC_FILES:= thread.cpp
LOCAL_STATIC_LIBRARIES:= libboost_thread libblake2 libcryptopp libargon2

include $(BUILD_EXECUTABLE)
