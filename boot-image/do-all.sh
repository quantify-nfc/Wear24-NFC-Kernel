export DATE_TIME=$(date +"%m-%d-%Y_%H-%M-%S")

./extract-img.sh
./build-image.sh

echo "Deleting unneeded files..."
rm -rf unpacked

echo "Done!"
echo "If build succeeded, find kernel image here: "$(pwd)"/JareDav_"$DATE_TIME".img"
echo "If build succeeded, find zImage here: "$(pwd)"/zImage-dtb"
