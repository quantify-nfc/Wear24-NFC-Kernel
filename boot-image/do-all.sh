./extract-img.sh
./build-image.sh

echo "Deleting unneeded files..."
rm -f bootimg.cfg
rm -f initrd.img

cp zImage ../
cp dorado-kernel-image-nfc.img ../

echo "Done!"
echo "Find kernel image here: "$(pwd)"/../dorado-kernel-image-nfc.img"
echo "Find zImage here: "$(pwd)"/../zImage"
