echo $1
rootdirectory="$PWD"
# ---------------------------------

# dirs="bionic"
#
# for dir in $dirs ; do
# 	cd $rootdirectory
# 	cd $dir
# 	echo "Applying $dir patches..."
# 	git am $rootdirectory/device/motorola/XT1663/patches/$dir/*.patch
# 	echo " "
# done

dirs="frameworks/av"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/motorola/XT1663/patches/$dir/*.patch
	echo
done
