#!/bin/bash
timeout () {
    tput sc
    time=$1; while [ $time -ge 0 ]; do
        tput rc; tput el
        printf "$2" $time
        ((time--))
        sleep 1
    done
    tput rc; tput ed;
}

clear

if [ ! -d ".quantifyinit" ]; then
echo "Quantify | The \"official\" Wear24 ROM Project"
echo "WIP by JaredTamana and davwheat (XDA)"
echo "Thx to osm0sis (mkbootimg), lexri, bensdeals"
echo "And Quanta/AOSP, I suppose :')"
echo "---------------------------------------------------"
timeout 3 "Build begins in %s seconds."

cd kernel
fi

export CROSS_COMPILE=$(pwd)/../tools/toolchain/arm-eabi/bin/
export ARCH=arm && export SUBARCH=arm

mkdir -p out

set -e
make O=out clean
make O=out dorado_defconfig
make O=out -j$(nproc --all)
set +e

echo "Build complete!"
echo "zImage in: "$(pwd)/out/arch/arm/boot
echo "Converting to boot image..."

cp out/arch/arm/boot/zImage-dtb ../boot-image
cd ../boot-image

./do-all.sh

cd ..
