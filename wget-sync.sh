#! /bin/bash -e

# 配置克隆文件名

BASE_URL=https://speedynote.org
WINDOWS=SpeedyNoteInstaller_Beta_0.11.1_amd64.exe
WINDOWS_I386=SpeedyNoteInstaller_Beta_0.10.3_Qt5_i686.exe
WINDOWS_ARM=SpeedyNoteInstaller_Beta_0.10.5-2_arm64.exe
MACOS=SpeedyNote_v0.10.5_macOS.dmg
DEBIAN=speedynote_0.11.1-1_amd64.deb
DEBIAN_ARM=speedynote_0.11.1-1_arm64.deb
FEDORA=speedynote-0.10.5-1.fc42.x86_64.rpm
ALPINE_ARM=speedynote-0.10.5-r1.apk

# 克隆网站

rm -rf docs

wget \
  --mirror \
  --page-requisites \
  --adjust-extension \
  --convert-links \
  --wait=2 \
  --random-wait \
  --limit-rate=200K \
  --no-parent \
  --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" \
  $BASE_URL

mv speedynote.org docs

cd docs

cd assets && wget $BASE_URL/assets/banner-D5f1C8v3.png && cd ..

wget $BASE_URL/$WINDOWS
wget $BASE_URL/$WINDOWS_I386
wget $BASE_URL/$WINDOWS_ARM
wget $BASE_URL/$MACOS
wget $BASE_URL/$DEBIAN
wget $BASE_URL/$DEBIAN_ARM
wget $BASE_URL/$FEDORA
wget $BASE_URL/$ALPINE_ARM
