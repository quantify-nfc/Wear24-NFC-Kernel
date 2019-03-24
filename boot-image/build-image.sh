export kernel=zImage-dtb
export ramdisk=unpacked/stock.img-ramdisk.gz
export cmdline="console=ttyHSL0,115200,n8 enforcing=0 androidboot.selinux=permissive androidboot.console=ttyHSL0 androidboot.hardware=dorado msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 buildvariant=user log_buf_len=8M"
export base=80000000
export pagesize=2048
export kernel_offset=00008000
export ramdisk_offset=01000000
export tags_offset=00000100
export os_version=7.1.1
export os_patch_level=2017-03

echo "--------------------------------------------------"
echo "Running mkbootimg using the following parameters:"
echo "BOARD_KERNEL_CMDLINE $cmdline"
echo "BOARD_KERNEL_BASE $base"
echo "BOARD_PAGE_SIZE $pagesize"
echo "BOARD_KERNEL_OFFSET $kernel_offset"
echo "BOARD_RAMDISK_OFFSET $ramdisk_offset"
echo "BOARD_TAGS_OFFSET $tags_offset"
echo "BOARD_OS_VERSION $os_version"
echo "BOARD_OS_PATCH_LEVEL $os_patch_level"

../tools/mkbootimg/mkbootimg --kernel zImage-dtb --ramdisk unpacked/stock.img-ramdisk.gz --cmdline "console=ttyHSL0,115200,n8 enforcing=0 androidboot.selinux=permissive androidboot.console=ttyHSL0 androidboot.hardware=dorado msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 buildvariant=user log_buf_len=8M" --base 80000000 --pagesize 2048 --kernel_offset 00008000 --ramdisk_offset 01000000 --tags_offset 00000100 --os_version 7.1.1 --os_patch_level 2017-03 -o Quantify-$DATE_TIME-$branch.img
echo "--------------- end of mkbootimg -----------------"
