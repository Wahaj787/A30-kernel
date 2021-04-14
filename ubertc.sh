echo "Exporting variables:--"
echo "   "
export ARCH=arm64
export ANDROID_MAJOR_VERSION=q 
export CROSS_COMPILE=/home/prox3a/Desktop/uber_aarch64-linux-android-4.9.x/bin/aarch64-linux-android- 
read -p "Do you wanna clean build :  " x
echo " "
if x='y'
then
echo "Cleaning resources:-  "
echo "    "
sleep 1; 
make clean mrproper
fi 
 echo " "
echo "Make samsung exynos config:-"
make exynos7885-a30_defconfig
read -p "Do you want any modification? : " b
if b='y'
then
make menuconfig
time make -j4
fi
