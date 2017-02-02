#!/bin/bash

## Install Ubuntu 16.04 64Bits
## This script will install a ffmpeg with support for nvenc on ubuntu

#Authors:
#   LinuxPro (http://www.linuxpro.com.br/)


## Para Instalar, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!


# Check if user has root privileges
if [[ $EUID -ne 0 ]]; then
echo "You must run the script as root or using sudo"
   exit 1
fi


add-apt-repository ppa:obsproject/obs-studio -y
add-apt-repository ppa:graphics-drivers/ppa -y
apt-get update
apt-get -y install libnppi7.5 libfdk-aac0 obs-studio libopenh264-3 ffmpeg libchromaprint0
apt-add-repository --remove ppa:obsproject/obs-studio -y

add-apt-repository ppa:djcj/hybrid -y
apt-get update 
apt-get -y install librubberband2v5 libkvazaar3 libnetcdf11 libzimg2 libebur128-1
apt-add-repository --remove ppa:djcj/hybrid -y
apt-get update

cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb

if [ -f libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb ]
then
	dpkg -i libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb
	rm -f libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb
else
	exit $?
fi

cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/ffmpeg-2.8.6_sdk6_Ubuntu1604_64Bits.xz

if [ -f ffmpeg-2.8.6_sdk6_Ubuntu1604_64Bits.xz ]
then
	tar -vxf ffmpeg-2.8.6_sdk6_Ubuntu1604_64Bits.xz
	chown -R root:root usr/*
	cp -aR /tmp/usr/* /usr/
	rm -rf /tmp/usr /tmp/ffmpeg-2.8.6_sdk6_Ubuntu1604_64Bits.xz
else
	exit $?
fi


cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/ffmpeg-3.2.2_sdk7_Ubuntu1604_64Bits.xz

if [ -f ffmpeg-3.2.2_sdk7_Ubuntu1604_64Bits.xz ]
then
	tar -vxf ffmpeg-3.2.2_sdk7_Ubuntu1604_64Bits.xz
	chown -R root:root /tmp/usr/*
	cp -aR /tmp/usr/* /usr/
	rm -rf /tmp/usr /tmp/ffmpeg-3.2.2_sdk7_Ubuntu1604_64Bits.xz
else
	exit $?
fi


cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/obs-studio-portable_20170202.tgz

if [ -f obs-studio-portable_20170202.tgz ]
then
	rm -rf /opt/obs-studio-portable
	tar -xvf obs-studio-portable_*.tgz
	rm -f /tmp/obs-studio-portable_*.tgz
	mv obs-studio-portable /opt/
else
	exit $?
fi


echo '#! /bin/sh

cd /opt/obs-studio-portable/bin/64bit/
./obs &' > /usr/local/bin/obs-portable

chmod +x /usr/local/bin/obs-portable

echo '[Desktop Entry]
Version=1.0
Name=OBS-PORTABLE
GenericName=Streaming/Recording Software
Comment=Free and Open Source Streaming/Recording Software
Exec=obs-portable
Icon=obs
Terminal=false
Type=Application
Categories=AudioVideo;Recorder;
StartupNotify=true' > /usr/share/applications/obs-portable.desktop
