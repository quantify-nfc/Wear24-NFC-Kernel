# Wear24 NFC

This project is a linux kernel for the Quantas Dorado (sold as Verizon Wear24). Our aim is to get the watch to support NFC, a feature Verizon promised, yet never shipped.

## Building

### Automatic

Build using `./build.sh`.

### Manual

- Enter the `kernel` directory (`cd kernel`)
- Make sure you `make O=out clean` the project first. (Using `make O=out mrproper` can ruin some stuff like the config.)
- Export the cross compiler toolchain (gcc) location: `export CROSS_COMPILE=path/to/gcc/`
- Export the (sub)architecture : `export ARCH=arm && export SUBARCH=arm`
- Create the output directory: `mkdir -p out`
- Set up the defconfig: `make O=out msm8909w-perf`
- Start building: `make O=out -j$(nproc --all)`*

* `$(nproc -all)` is just the number of cores on your system. It is set automagically and your can replace it with another number if you'd like.

## Discord

https://discord.gg/8XyTeUC

## Travis CI

[![Build Status](https://travis-ci.org/davwheat/Wear24-NFC.svg?branch=master)](https://travis-ci.org/davwheat/Wear24-NFC)
