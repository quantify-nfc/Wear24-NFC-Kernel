# Quantify - The "official" Wear24 ROM Project

[![Build Status](https://travis-ci.org/davwheat/Wear24-NFC-Kernel.svg?branch=master)](https://travis-ci.org/davwheat/Wear24-NFC-Kernel)

This project is a Linux kernel for the Quanta's `dorado` (sold as the Verizon Wear24). Our aim is to get the watch to support NFC, a feature Verizon promised, yet never shipped.

## Discord

https://discord.gg/8XyTeUC

## Version Numbering

Version Template: `vX.Y-ZZZZZ(-T)`

`X` = Major Version

`Y` = Minor Version

`ZZZZZ` = Version Type (e.g. Alpha, Beta, Release)

`-T` = Travis CI Build (if not, then it isn't there)

## Branches

You are on **MASTER**.

This repository has three main branches: `master`, `nfc` and `release`. These branches are semi-equivalent to Google Chrome's Stable, Beta and Dev update channels.

`master` is *normally* stable. We generally don't push changes here unless we are confident that they work. We don't recommend flashing your device using this code despite us calling it 'stable'.

`nfc` is unstable and experimental. Likely broken half the time. **DO NOT FLASH FROM HERE UNLESS YOU WANT TO** (probably) **BRICK YOUR DEVICE!**

`release` is our end user branch. This is where we will distribute the kernel when there is an actual reason to flash it. Our releases are automagically built by our [Travis CI integration](https://travis-ci.org/davwheat/Wear24-NFC-Kernel/branches) and uploaded to [GitHub releases](https://github.com/davwheat/Wear24-NFC-Kernel/releases).

## Building

### Automatic

Build and compile into `boot.img` using `./build.sh`.

### Manual

**NOT RECOMMENDED**

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
