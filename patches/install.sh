echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic external frameworks/av frameworks/native system/sepolicy system/netd system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/motorola/XT1663/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
