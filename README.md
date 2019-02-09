# Wear24 NFC

[![Build Status](https://travis-ci.org/davwheat/Wear24-NFC.svg?branch=master)](https://travis-ci.org/davwheat/Wear24-NFC)

This project is a Linux kernel for the Quanta's `dorado` (sold as the Verizon Wear24). Our aim is to get the watch to support NFC, a feature Verizon promised, yet never shipped.

## Building

### Automatic

Build and compile into `boot.img` using `./build.sh`.

### Manual

- Enter the `kernel` directory (`cd kernel`)
- Make sure you `make O=out clean` the project first. (Using `make O=out mrproper` can ruin some stuff like the config.)
- Export the cross compiler toolchain (gcc) location: `export CROSS_COMPILE=path/to/gcc/`
- Export the (sub)architecture : `export ARCH=arm && export SUBARCH=arm`
- Create the output directory: `mkdir -p out`
- Set up the defconfig: `make O=out dorado_defconfig`
- Start building: `make O=out -j$(nproc --all)` (see note 1)
- If build succeeds,  `cd ../boot-image && cp ../kernel/out/arch/arm/boot/zImage-dtb ./`
- `mkdir unpacked && ../tools/mkbootimg/unpackbootimg -i stock.img -o unpacked` unpacks the stock boot image from Quanta, so we can get the ramdisk
- Make the boot image using `../tools/mkbootimg/mkbootimg`. Make sure to include all the parameters `unpackbootimg` gave you.

1: `$(nproc -all)` is just the number of cores on your system. It is set automagically and you can replace it with another number if you'd like.

## Discord

https://discord.gg/8XyTeUC

