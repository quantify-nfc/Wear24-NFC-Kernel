./extract-img.sh
./build-image.sh

echo "Deleting unneeded files..."
rm -rf unpacked

echo "Done!"
echo "Find kernel image here: "$(pwd)"/JareDav_"$(date +"%m-%d-%Y_%H-%M-%S")".img"
echo "Find zImage here: "$(pwd)"/zImage-dtb"
