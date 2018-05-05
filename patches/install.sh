echo $1

rootdirectory="$PWD"
dirs="bionic
      external/wpa_supplicant_8
      frameworks/av
      frameworks/base
      frameworks/native
      frameworks/opt/telephony
      system/core
      system/netd
      system/sepolicy"

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

