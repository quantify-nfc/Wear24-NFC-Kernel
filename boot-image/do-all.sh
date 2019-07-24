export DATE_TIME=$(date +"%m-%d-%Y_%H-%M-%S")
export branch=$(git symbolic-ref --short HEAD)

if [ "$CI" == "true" ]
then
	export branch="-travis-"$TRAVIS_BRANCH
else
	export branch=$(git symbolic-ref --short HEAD)
fi

./extract-img.sh
./build-image.sh

echo "Deleting unneeded files..."
rm -rf unpacked

mv "Quantify-Kernel-$DATE_TIME-$branch.img" out/
mv zImage-dtb out/
echo "Done!"
echo "If build succeeded, find kernel image here: $(pwd)/out/Quantify-Kernel-$DATE_TIME-$branch.img"
echo "If build succeeded, find zImage here: "$(pwd)"/out/zImage-dtb"
