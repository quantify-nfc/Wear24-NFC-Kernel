export DATE_TIME=$(date +"%m-%d-%Y_%H-%M-%S")
export branch=$(git symbolic-ref --short HEAD)

./extract-img.sh
./build-image.sh

echo "Deleting unneeded files..."
rm -rf unpacked

mkdir ../out/
mv "Quantify-Kernel-$DATE_TIME-$branch.img" ../out/
mv zImage-dtb ../out/
echo "Done!"
cd ..
echo "If build succeeded, find kernel image here: $(pwd)/out/Quantify-Kernel-$DATE_TIME-$branch.img"
echo "If build succeeded, find zImage here: "$(pwd)"/out/zImage-dtb"
