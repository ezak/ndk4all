LOCAL_PATH:= $(call my-dir)
include $($CLEAR_VARS)

LOCAL_MODULE:= cryptopp
LOCAL_MODULE_FILENAME:= libcryptopp
LOCAL_C_INCLUDES:= /home/izak/android/ndk/19.2.5345600/sources/android/cpufeatures/

LOCAL_SRC_FILES:= \
${CRYPTOPP_LIB_ROOT}/algparam.cpp \
${CRYPTOPP_LIB_ROOT}/asn.cpp \
${CRYPTOPP_LIB_ROOT}/basecode.cpp \
${CRYPTOPP_LIB_ROOT}/cpu.cpp \
${CRYPTOPP_LIB_ROOT}/cryptlib.cpp \
${CRYPTOPP_LIB_ROOT}/default.cpp \
${CRYPTOPP_LIB_ROOT}/des.cpp \
${CRYPTOPP_LIB_ROOT}/dessp.cpp \
${CRYPTOPP_LIB_ROOT}/dll.cpp \
${CRYPTOPP_LIB_ROOT}/ec2n.cpp \
${CRYPTOPP_LIB_ROOT}/ecp.cpp \
${CRYPTOPP_LIB_ROOT}/filters.cpp \
${CRYPTOPP_LIB_ROOT}/fips140.cpp \
${CRYPTOPP_LIB_ROOT}/gcm.cpp \
${CRYPTOPP_LIB_ROOT}/gf2n.cpp \
${CRYPTOPP_LIB_ROOT}/gfpcrypt.cpp \
${CRYPTOPP_LIB_ROOT}/hex.cpp \
${CRYPTOPP_LIB_ROOT}/hmac.cpp \
${CRYPTOPP_LIB_ROOT}/hrtimer.cpp \
${CRYPTOPP_LIB_ROOT}/integer.cpp \
${CRYPTOPP_LIB_ROOT}/iterhash.cpp \
${CRYPTOPP_LIB_ROOT}/misc.cpp \
${CRYPTOPP_LIB_ROOT}/modes.cpp \
${CRYPTOPP_LIB_ROOT}/mqueue.cpp \
${CRYPTOPP_LIB_ROOT}/nbtheory.cpp \
${CRYPTOPP_LIB_ROOT}/oaep.cpp \
${CRYPTOPP_LIB_ROOT}/osrng.cpp \
${CRYPTOPP_LIB_ROOT}/pubkey.cpp \
${CRYPTOPP_LIB_ROOT}/queue.cpp \
${CRYPTOPP_LIB_ROOT}/randpool.cpp \
${CRYPTOPP_LIB_ROOT}/rdtables.cpp \
${CRYPTOPP_LIB_ROOT}/rijndael.cpp \
${CRYPTOPP_LIB_ROOT}/rijndael_simd.cpp \
${CRYPTOPP_LIB_ROOT}/rng.cpp \
${CRYPTOPP_LIB_ROOT}/sha.cpp \
${CRYPTOPP_LIB_ROOT}/sha_simd.cpp \
${CRYPTOPP_LIB_ROOT}/simple.cpp \
${CRYPTOPP_LIB_ROOT}/sse_simd.cpp \


include $(BUILD_STATIC_LIBRARY)
