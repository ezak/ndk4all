LOCAL_PATH:= $(call my-dir)
include $($CLEAR_VARS)

LOCAL_MODULE:= boost_thread
LOCAL_C_INCLUDES:= ${BOOST_INCLUDE_PATH}

LOCAL_SRC_FILES:= \
${BOOST_LIBS_ROOT}/thread/src/pthread/thread.cpp \
${BOOST_LIBS_ROOT}/thread/src/pthread/once.cpp \
${BOOST_LIBS_ROOT}/thread/src/pthread/once_atomic.cpp


include $(BUILD_STATIC_LIBRARY)
