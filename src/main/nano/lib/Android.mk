LOCAL_PATH:= $(call my-dir)
include $($CLEAR_VARS)

LOCAL_MODULE:= nano
LOCAL_MODULE_FILENAME:= libnano


PLATFORM_SRC := \
${NANO_LIB_ROOT}/plat/linux/priority.cpp \
${NANO_LIB_ROOT}/plat/posix/perms.cpp \
${NANO_LIB_ROOT}/plat/linux/thread_role.cpp \
#$#{NANO_LIB_ROOT}/plat/linux/debugging.cpp \


LOCAL_C_INCLUDES:= \
${BOOST_INCLUDE_PATH} \
${NANONODE_ROOT} \
${NANO_ROOT} \
${CPPTOML_INCLUDE} \
${FLATBUFFERS_INCLUDE} \
${NANO_LIB_ROOT}/alarm.hpp \
${NANO_LIB_ROOT}/asio.hpp \
${NANO_LIB_ROOT}/blockbuilders.hpp \
${NANO_LIB_ROOT}/blocks.hpp \
${NANO_LIB_ROOT}/cli.hpp \
${NANO_LIB_ROOT}/config.hpp \
${NANO_LIB_ROOT}/configbase.hpp \
${NANO_LIB_ROOT}/diagnosticsconfig.hpp \
${NANO_LIB_ROOT}/epoch.hpp \
${NANO_LIB_ROOT}/errors.hpp \
${NANO_LIB_ROOT}/ipc.hpp \
${NANO_LIB_ROOT}/ipc_client.hpp \
${NANO_LIB_ROOT}/json_error_response.hpp \
${NANO_LIB_ROOT}/jsonconfig.hpp \
${NANO_LIB_ROOT}/lmdbconfig.hpp \
${NANO_LIB_ROOT}/locks.hpp \
${NANO_LIB_ROOT}/logger_mt.hpp \
${NANO_LIB_ROOT}/memory.hpp \
${NANO_LIB_ROOT}/numbers.hpp \
${NANO_LIB_ROOT}/optional_ptr.hpp \
${NANO_LIB_ROOT}/rate_limiting.hpp \
${NANO_LIB_ROOT}/rep_weights.hpp \
${NANO_LIB_ROOT}/rocksdbconfig.hpp \
${NANO_LIB_ROOT}/rpc_handler_interface.hpp \
${NANO_LIB_ROOT}/rpcconfig.hpp \
${NANO_LIB_ROOT}/stats.hpp \
${NANO_LIB_ROOT}/stream.hpp \
${NANO_LIB_ROOT}/threading.hpp \
${NANO_LIB_ROOT}/timer.hpp \
${NANO_LIB_ROOT}/tomlconfig.hpp \
${NANO_LIB_ROOT}/utility.hpp \
${NANO_LIB_ROOT}/walletconfig.hpp \
${NANO_LIB_ROOT}/work.hpp \
${NANO_LIB_ROOT}/worker.hpp \

LOCAL_SRC_FILES := \
${PLATFORM_SRC} \
${NANO_LIB_ROOT}/alarm.cpp \
${NANO_LIB_ROOT}/asio.cpp \
${NANO_LIB_ROOT}/blockbuilders.cpp \
${NANO_LIB_ROOT}/blocks.cpp \
${NANO_LIB_ROOT}/cli.cpp \
${NANO_LIB_ROOT}/config.cpp \
${NANO_LIB_ROOT}/diagnosticsconfig.cpp \
${NANO_LIB_ROOT}/epoch.cpp \
${NANO_LIB_ROOT}/errors.cpp \
${NANO_LIB_ROOT}/ipc.cpp \
${NANO_LIB_ROOT}/ipc_client.cpp \
${NANO_LIB_ROOT}/jsonconfig.cpp \
${NANO_LIB_ROOT}/lmdbconfig.cpp \
${NANO_LIB_ROOT}/locks.cpp \
${NANO_LIB_ROOT}/memory.cpp \
${NANO_LIB_ROOT}/numbers.cpp \
${NANO_LIB_ROOT}/rate_limiting.cpp \
${NANO_LIB_ROOT}/rep_weights.cpp \
${NANO_LIB_ROOT}/rocksdbconfig.cpp \
${NANO_LIB_ROOT}/rpcconfig.cpp \
${NANO_LIB_ROOT}/stats.cpp \
${NANO_LIB_ROOT}/threading.cpp \
${NANO_LIB_ROOT}/timer.cpp \
${NANO_LIB_ROOT}/tomlconfig.cpp \
${NANO_LIB_ROOT}/utility.cpp \
${NANO_LIB_ROOT}/walletconfig.cpp \
${NANO_LIB_ROOT}/work.cpp \
${NANO_LIB_ROOT}/worker.cpp \

include $(BUILD_STATIC_LIBRARY)
