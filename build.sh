export CROSS_COMPILE=$(pwd)/toolchain/arm-eabi/bin/
export ARCH=arm && export SUBARCH=arm

mkdir -p out

make O=out clean
#make O=out mrproper
make O=out dorado_defconfig
make O=out -j$(nproc --all)
