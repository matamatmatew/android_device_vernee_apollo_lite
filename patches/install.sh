echo $1

rootdirectory="$PWD"
dirs="external/wpa_supplicant_8
      frameworks/base
      frameworks/opt/telephony
      system/core"

# ---------------------------------

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/vernee/apollo_lite/patches/$dir/*.patch
	echo " "
done

# -----------------------------------

echo "Changing to build directory..."
echo " "
cd $rootdirectory

