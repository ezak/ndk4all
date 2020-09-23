#!/bin/bash
set -eu
ROOT_DIR=`pwd`
export ANDROID_NDK_ROOT=/home/izak/android/ndk/17.2.4988734
export ANDROID_NDK_HOME=$ANDROID_NDK_ROOT ## warning silencer
ARCH=$1
API=$2

OPENSSL_ARCHIVE=openssl-1.1.1g.tar.gz
OPENSSL_DIR=openssl-1.1.1g
OPENSSL_VERSION=1.1.1
INSTALL_DIR=/home/izak/openssl-android-bin/$ARCH-$API

#https://www.openssl.org/source/old/1.1.1/openssl-1.1.1d.tar.gz

if [ ! -f ${OPENSSL_ARCHIVE} ]; then
	echo "Downloading " openssl-${OPENSSL_VERSION}.tar.gz
	wget https://www.openssl.org/source/${OPENSSL_ARCHIVE}
fi

if [ -d ${OPENSSL_DIR} ]; then
	rm -rf ${OPENSSL_DIR}
fi

tar -xvf ${OPENSSL_ARCHIVE}
cd ${OPENSSL_DIR}


case "$ARCH" in
  arm64)
	PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH
	./Configure android-arm64 -D__ANDROID_API__=$API --prefix=$INSTALL_DIR
    ;;
  arm)
	PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$PATH
	./Configure android-arm -D__ANDROID_API__=$API --prefix=$INSTALL_DIR
    ;;
  x86_64)
	PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/x86_64-4.9/prebuilt/linux-x86_64/bin:$PATH
	./Configure android-x86_64 -D__ANDROID_API__=$API --prefix=$INSTALL_DIR
    ;;
  x86)
	PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/x86-4.9/prebuilt/linux-x86_64/bin:$PATH
	./Configure android-x86 -D__ANDROID_API__=$API --prefix=$INSTALL_DIR
    ;;
esac

make

make install
