export CROSS_COMPILE=$(pwd)/toolchain/arm-eabi/bin/
export ARCH=arm && export SUBARCH=arm

mkdir -p out

make O=out clean
#make O=out mrproper
make O=out msm8909w
make O=out -j$(nproc --all)