TOP_LOCAL_PATH := $(call my-dir)

BOOST_LIBS_ROOT := /home/izak/random/boost/libs
CRYPTOPP_LIB_ROOT := /home/izak/random/nano-node/crypto/cryptopp
BLAKE2_LIB_ROOT := /home/izak/random/nano-node/crypto/blake2
ARGON2_LIB_ROOT := /home/izak/random/nano-node/crypto/phc-winner-argon2
ED25519_LIB_ROOT := /home/izak/random/nano-node/crypto/ed25519-donna
LMDB_LIB_ROOT := /home/izak/random/nano-node/lmdb/libraries/liblmdb
FLATBUFFERS_LIB_ROOT := /home/izak/random/nano-node/flatbuffers
CPPTOML_INCLUDE := /home/izak/random/nano-node/cpptoml/include
##
NANONODE_ROOT := /home/izak/random/nano-node
NANO_ROOT := /home/izak/random/nano-node/nano
NANOCRYPTO_LIB_ROOT := /home/izak/random/nano-node/nano/crypto_lib
NANO_LIB_ROOT := /home/izak/random/nano-node/nano/lib


FLATBUFFERS_INCLUDE := ${FLATBUFFERS_LIB_ROOT}/include

BOOST_INCLUDE_PATH := \
${BOOST_LIBS_ROOT}/geometry/include \
${BOOST_LIBS_ROOT}/poly_collection/include \
${BOOST_LIBS_ROOT}/fiber/include \
${BOOST_LIBS_ROOT}/sort/include \
${BOOST_LIBS_ROOT}/outcome/include \
${BOOST_LIBS_ROOT}/variant2/include \
${BOOST_LIBS_ROOT}/local_function/include \
${BOOST_LIBS_ROOT}/type_traits/include \
${BOOST_LIBS_ROOT}/bind/include \
${BOOST_LIBS_ROOT}/parameter/include \
${BOOST_LIBS_ROOT}/endian/include \
${BOOST_LIBS_ROOT}/multi_index/include \
${BOOST_LIBS_ROOT}/ptr_container/include \
${BOOST_LIBS_ROOT}/units/include \
${BOOST_LIBS_ROOT}/program_options/include \
${BOOST_LIBS_ROOT}/type_index/include \
${BOOST_LIBS_ROOT}/hana/include \
${BOOST_LIBS_ROOT}/core/include \
${BOOST_LIBS_ROOT}/regex/include \
${BOOST_LIBS_ROOT}/function_types/include \
${BOOST_LIBS_ROOT}/test/include \
${BOOST_LIBS_ROOT}/range/include \
${BOOST_LIBS_ROOT}/move/include \
${BOOST_LIBS_ROOT}/unordered/include \
${BOOST_LIBS_ROOT}/compatibility/include \
${BOOST_LIBS_ROOT}/throw_exception/include \
${BOOST_LIBS_ROOT}/fusion/include \
${BOOST_LIBS_ROOT}/circular_buffer/include \
${BOOST_LIBS_ROOT}/coroutine2/include \
${BOOST_LIBS_ROOT}/multi_array/include \
${BOOST_LIBS_ROOT}/container/include \
${BOOST_LIBS_ROOT}/lockfree/include \
${BOOST_LIBS_ROOT}/xpressive/include \
${BOOST_LIBS_ROOT}/mp11/include \
${BOOST_LIBS_ROOT}/container_hash/include \
${BOOST_LIBS_ROOT}/nowide/include \
${BOOST_LIBS_ROOT}/optional/include \
${BOOST_LIBS_ROOT}/winapi/include \
${BOOST_LIBS_ROOT}/metaparse/include \
${BOOST_LIBS_ROOT}/proto/include \
${BOOST_LIBS_ROOT}/function/include \
${BOOST_LIBS_ROOT}/stacktrace/include \
${BOOST_LIBS_ROOT}/qvm/include \
${BOOST_LIBS_ROOT}/convert/include \
${BOOST_LIBS_ROOT}/stl_interfaces/include \
${BOOST_LIBS_ROOT}/tti/include \
${BOOST_LIBS_ROOT}/atomic/include \
${BOOST_LIBS_ROOT}/iostreams/include \
${BOOST_LIBS_ROOT}/crc/include \
${BOOST_LIBS_ROOT}/exception/include \
${BOOST_LIBS_ROOT}/yap/include \
${BOOST_LIBS_ROOT}/graph/include \
${BOOST_LIBS_ROOT}/safe_numerics/include \
${BOOST_LIBS_ROOT}/statechart/include \
${BOOST_LIBS_ROOT}/type_erasure/include \
${BOOST_LIBS_ROOT}/filesystem/include \
${BOOST_LIBS_ROOT}/conversion/include \
${BOOST_LIBS_ROOT}/mpl/include \
${BOOST_LIBS_ROOT}/gil/include \
${BOOST_LIBS_ROOT}/context/include \
${BOOST_LIBS_ROOT}/align/include \
${BOOST_LIBS_ROOT}/algorithm/include \
${BOOST_LIBS_ROOT}/callable_traits/include \
${BOOST_LIBS_ROOT}/functional/include \
${BOOST_LIBS_ROOT}/icl/include \
${BOOST_LIBS_ROOT}/numeric/conversion/include \
${BOOST_LIBS_ROOT}/numeric/interval/include \
${BOOST_LIBS_ROOT}/numeric/odeint/include \
${BOOST_LIBS_ROOT}/numeric/ublas/include \
${BOOST_LIBS_ROOT}/thread/include \
${BOOST_LIBS_ROOT}/msm/include \
${BOOST_LIBS_ROOT}/math/include \
${BOOST_LIBS_ROOT}/spirit/include \
${BOOST_LIBS_ROOT}/typeof/include \
${BOOST_LIBS_ROOT}/coroutine/include \
${BOOST_LIBS_ROOT}/assert/include \
${BOOST_LIBS_ROOT}/preprocessor/include \
${BOOST_LIBS_ROOT}/concept_check/include \
${BOOST_LIBS_ROOT}/process/include \
${BOOST_LIBS_ROOT}/lambda/include \
${BOOST_LIBS_ROOT}/multiprecision/include \
${BOOST_LIBS_ROOT}/locale/include \
${BOOST_LIBS_ROOT}/interprocess/include \
${BOOST_LIBS_ROOT}/hof/include \
${BOOST_LIBS_ROOT}/timer/include \
${BOOST_LIBS_ROOT}/format/include \
${BOOST_LIBS_ROOT}/iterator/include \
${BOOST_LIBS_ROOT}/bimap/include \
${BOOST_LIBS_ROOT}/config/include \
${BOOST_LIBS_ROOT}/date_time/include \
${BOOST_LIBS_ROOT}/dynamic_bitset/include \
${BOOST_LIBS_ROOT}/python/include \
${BOOST_LIBS_ROOT}/compute/include \
${BOOST_LIBS_ROOT}/io/include \
${BOOST_LIBS_ROOT}/predef/include \
${BOOST_LIBS_ROOT}/ratio/include \
${BOOST_LIBS_ROOT}/phoenix/include \
${BOOST_LIBS_ROOT}/parameter_python/include \
${BOOST_LIBS_ROOT}/property_map/include \
${BOOST_LIBS_ROOT}/logic/include \
${BOOST_LIBS_ROOT}/asio/include \
${BOOST_LIBS_ROOT}/foreach/include \
${BOOST_LIBS_ROOT}/wave/include \
${BOOST_LIBS_ROOT}/tokenizer/include \
${BOOST_LIBS_ROOT}/assign/include \
${BOOST_LIBS_ROOT}/utility/include \
${BOOST_LIBS_ROOT}/integer/include \
${BOOST_LIBS_ROOT}/vmd/include \
${BOOST_LIBS_ROOT}/smart_ptr/include \
${BOOST_LIBS_ROOT}/contract/include \
${BOOST_LIBS_ROOT}/property_tree/include \
${BOOST_LIBS_ROOT}/accumulators/include \
${BOOST_LIBS_ROOT}/signals2/include \
${BOOST_LIBS_ROOT}/lexical_cast/include \
${BOOST_LIBS_ROOT}/serialization/include \
${BOOST_LIBS_ROOT}/static_string/include \
${BOOST_LIBS_ROOT}/flyweight/include \
${BOOST_LIBS_ROOT}/polygon/include \
${BOOST_LIBS_ROOT}/chrono/include \
${BOOST_LIBS_ROOT}/uuid/include \
${BOOST_LIBS_ROOT}/beast/include \
${BOOST_LIBS_ROOT}/histogram/include \
${BOOST_LIBS_ROOT}/any/include \
${BOOST_LIBS_ROOT}/dll/include \
${BOOST_LIBS_ROOT}/heap/include \
${BOOST_LIBS_ROOT}/variant/include \
${BOOST_LIBS_ROOT}/static_assert/include \
${BOOST_LIBS_ROOT}/system/include \
${BOOST_LIBS_ROOT}/graph_parallel/include \
${BOOST_LIBS_ROOT}/scope_exit/include \
${BOOST_LIBS_ROOT}/log/include \
${BOOST_LIBS_ROOT}/mpi/include \
${BOOST_LIBS_ROOT}/detail/include \
${BOOST_LIBS_ROOT}/intrusive/include \
${BOOST_LIBS_ROOT}/rational/include \
${BOOST_LIBS_ROOT}/pool/include \
${BOOST_LIBS_ROOT}/array/include \
${BOOST_LIBS_ROOT}/tuple/include \
${BOOST_LIBS_ROOT}/random/include \


include $(CLEAR_VARS)
include $(TOP_LOCAL_PATH)/../src/submodules/Android.mk
include $(TOP_LOCAL_PATH)/../src/main/Android.mk
