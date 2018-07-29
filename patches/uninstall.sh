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
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------

echo "Changing to build directory..."
echo " "
cd $rootdirectory

