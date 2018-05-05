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
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------

echo "Changing to build directory..."
echo " "
cd $rootdirectory

