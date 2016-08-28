#!/bin/bash

export KBUILD_BUILD_USER=oleg.svs

export KBUILD_BUILD_HOST=SRT

echo "Make dirs >>>"

mkdir tools/tools

echo "Export toolchains >>>"

export ARCH=arm CROSS_COMPILE=../*5.2*/bin/arm-cortex-linux-gnueabi-

echo "Make defconfig >>>"

make benefit_m7_defconfig

echo "Start build >>>"

	time make -j4

echo "======================"

