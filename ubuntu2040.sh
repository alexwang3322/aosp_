sudo ln -s /usr/bin/python3 /usr/bin/python

# install repo
#sudo apt-get update
#sudo apt-get install repo

mkdir -p ~/.bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.bin/repo
chmod a+rx ~/.bin/repo

repo version

# download and sync, --partial-clone is only for Git version 2.19 or greater
repo init -u https://android.googlesource.com/platform/manifest -b android13-gsi --partial-clone --clone-filter=blob:limit=10M
repo sync -j8

# build
source build/envsetup.sh
lunch aosp_cf_x86_phone_userDebug
m
