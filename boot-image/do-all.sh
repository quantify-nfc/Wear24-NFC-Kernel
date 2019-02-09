export DATE_TIME=$(date +"%m-%d-%Y_%H-%M-%S")
export branch=$(git symbolic-ref --short HEAD)

if [ $CI == true ]
then
	export branch="-travis-"$branch
fi

./extract-img.sh
./build-image.sh

echo "Deleting unneeded files..."
rm -rf unpacked

echo "Done!"
echo If build succeeded, find kernel image here: $(pwd)/JareDav-$DATE_TIME-$branch-.img
echo "If build succeeded, find zImage here: "$(pwd)"/zImage-dtb"
