buildkite-agent ALL=(ALL) NOPASSWD:ALL

sudo apt update

sudo apt install git

sudo apt install bc bison build-essential ccache curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev

sudo apt update

curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

chmod a+x ~/bin/repo

mkdir work

cd work

git config --global user.email "hasajapathirana2011@gmail.com"

git config --global user.name "Hasajapathirana"

git lfs install

repo init -u https://github.com/LineageOS/android.git -b lineage-20.0 --git-lfs install

repo sync -c -j4

git clone https://github.com/Exy2100-LOS/android_device_samsung_p3s.git -b lineage-20 device/samsung/p3s

git clone https://github.com/Exy2100-LOS/android_device_samsung_universal2100-common.git -b lineage-20 device/samsung/universal2100-commmon

git clone https://github.com/Exy2100-LOS/android_vendor_samsung_p3s.git -b lineage-20 vendor/samsung/p3s

source build/envsetup.sh

breakfast p3s -j4

ls

zip pbrp.zip -r /out/
