LOCAL_PATH:= $(call my-dir)
include $($CLEAR_VARS)

LOCAL_MODULE:= flatbuffers
LOCAL_MODULE_FILENAME:= libflatbuffers

FLATBUFFERS_LIB_INCLUDE := \
${FLATBUFFERS_LIB_ROOT}/include \
${FLATBUFFERS_LIB_ROOT}/grpc \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/base.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/flatbuffers.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/hash.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/idl.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/util.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/reflection.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/reflection_generated.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/stl_emulation.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/flexbuffers.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/registry.h \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/minireflect.h \

FLATBUFFERS_LIB_SRC := \
${FLATBUFFERS_LIB_ROOT}/src/idl_parser.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_text.cpp \
${FLATBUFFERS_LIB_ROOT}/src/reflection.cpp \
${FLATBUFFERS_LIB_ROOT}/src/util.cpp \

FLATBUFFERS_COMPILER_INCLUDE := \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/code_generators.h \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/schema_interface.h \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/cpp_generator.h \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/go_generator.h \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/java_generator.h \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/python_generator.h \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/python_private_generator.h \

FLATBUFFERS_COMPILER_SRC := \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_cpp.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_csharp.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_dart.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_kotlin.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_go.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_java.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_js_ts.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_php.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_python.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_lobster.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_lua.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_rust.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_fbs.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_grpc.cpp \
${FLATBUFFERS_LIB_ROOT}/src/idl_gen_json_schema.cpp \
${FLATBUFFERS_LIB_ROOT}/src/flatc.cpp \
${FLATBUFFERS_LIB_ROOT}/src/flatc_main.cpp \
${FLATBUFFERS_LIB_ROOT}/src/code_generators.cpp \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/cpp_generator.cc \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/go_generator.cc \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/java_generator.cc \
${FLATBUFFERS_LIB_ROOT}/grpc/src/compiler/python_generator.cc \

FLATHASH_INCLUDE := \
${FLATBUFFERS_LIB_ROOT}/include/flatbuffers/hash.h \

FLATHASH_SRC := \
${FLATBUFFERS_LIB_ROOT}/src/flathash.cpp \

LOCAL_C_INCLUDES:= \
${FLATBUFFERS_LIB_INCLUDE} \
${FLATBUFFERS_COMPILER_INCLUDE} \
${FLATHASH_INCLUDE} \

LOCAL_SRC_FILES := \
${FLATBUFFERS_LIB_SRC} \
${FLATBUFFERS_COMPILER_SRC} \
${FLATHASH_SRC} \

include $(BUILD_STATIC_LIBRARY)
