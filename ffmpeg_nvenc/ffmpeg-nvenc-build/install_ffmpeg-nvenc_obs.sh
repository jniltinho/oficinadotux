#!/bin/bash
## Install FFMPEG GIT Ubuntu 16.04 64Bits
## http://www.diolinux.com.br/2016/07/como-instalar-o-ffmpeg-nvenc-no-ubuntu.html
## Pacote Compilado no GITHUB: https://github.com/jniltinho/oficinadotux
## Run as root (sudo su)

## Links
## http://ftp.eq.uc.pt/software/Linux/deb-multimedia/pool/main/v/vid.stab/
## https://gist.github.com/Brainiarc7/4b49f463a08377530df6cecb8171306a
## https://developer.nvidia.com/ffmpeg

## Check Nvidia ENC
## nvidia-smi dmon -i 0

## Test FFMPEG ENCODER NVENC (FFMPEG GIT NVIDIA-SDK 7.1.9)
## ffmpeg -y -i INPUT -vcodec h264_nvenc -b:v 10M -acodec copy OUTPUT.mp4
## ffmpeg -y -i INPUT -vcodec h264_nvenc -pix_fmt nv12 -tier high -b:v 13M -qmin 17 -qmax 40 -profile:v high -preset slow -cq 10 -bf 2 -g 150 -delay 0 -acodec copy OUTPUT4.mp4
## ffmpeg -y -i INPUT -vcodec h264_nvenc -pix_fmt yuv444p -b:v 13M -qmin 17 -qmax 40 -profile:v high -preset slow -cq 10 -bf 2 -g 150 -delay 0 -acodec copy OUTPUT4.mp4


# Check if user has root privileges
if [[ $EUID -ne 0 ]]; then
echo "You must run the script as root or using sudo"
   exit 1
fi


cd /root/
mkdir -p /root/files_bin/

sed -i -e "/^# deb-src .*xenial universe/ s/^# //" /etc/apt/sources.list
add-apt-repository ppa:graphics-drivers/ppa -y
apt-get update

apt-get -y install nvidia-381 nvidia-381-dev -y
apt-get -y install nvidia-cuda-toolkit --install-recommends

apt-get -y install unzip libfdk-aac-dev checkinstall unzip wget sysstat libebur128-dev libjansson-dev
apt-get -y install libgtk2.0-0:i386 libpangox-1.0-0:i386 yasm autoconf libtool librubberband-dev
apt-get -y install libpangoxft-1.0-0:i386 libidn11:i386 libglu1-mesa:i386 libsmbclient-dev libnetcdf-dev
apt-get -y install libomxil-bellagio-dev libssl-dev libsdl2-dev libv4l-dev nvidia-cuda-dev nvidia-opencl-dev

apt-get -y install build-essential libspeexdsp-dev pkg-config cmake libchromaprint-dev
apt-get -y build-dep ffmpeg

ln -s /usr/lib/nvidia-381/libnvcuvid.so /usr/lib/libnvcuvid.so
ln -s /usr/lib/nvidia-378/libnvcuvid.so.1 /usr/lib/libnvcuvid.so.1


add-apt-repository ppa:djcj/hybrid -y
apt-get update
apt-get -y install libzimg-dev
##apt-get -y install libkvazaar-dev libopenh264-dev 
apt-add-repository --remove ppa:djcj/hybrid -y
apt-get update

wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/libvidstab-dev_0.98b-dmo1+deb8u1_amd64.deb
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb
dpkg -i libvidstab-dev_0.98b-dmo1+deb8u1_amd64.deb libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb
rm -f libvidstab-dev_0.98b-dmo1+deb8u1_amd64.deb libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb


cd /root/
wget -c https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/Video_Codec_SDK_8.0.14.zip
unzip Video_Codec_SDK_8.0.14.zip
cp -vr Video_Codec_SDK_8.0.14/Samples/common/inc/GL/* /usr/include/GL/
cp -vr Video_Codec_SDK_8.0.14/Samples/common/inc/*.h /usr/include/
mv Video_Codec_SDK_8.0.14 nv_sdk
rm -rf Video_Codec_SDK_8.0.14.zip

### Compile FFMPEG from GIT
cd /root/
wget -c https://github.com/FFmpeg/FFmpeg/archive/master.zip
unzip master.zip && rm -f master.zip

cd FFmpeg-master
./configure --prefix=/usr --extra-version=1ubuntu2 --build-suffix=-ffmpeg --toolchain=hardened \
--libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --cc=cc --cxx=g++ \
--extra-cflags=-I../nv_sdk --extra-ldflags=-L../nv_sdk \
--enable-rpath --enable-gpl --enable-version3 --enable-nonfree --disable-static --enable-shared \
--enable-avresample --enable-omx --enable-omx-rpi --enable-avisynth \
--enable-chromaprint --enable-decoder=atrac3 --enable-decoder=atrac3p --enable-bzlib --enable-fontconfig \
--enable-frei0r --enable-gnutls --enable-gpl --enable-gray --enable-iconv --enable-ladspa \
--enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio \
--enable-libdc1394 --enable-libfdk-aac --enable-libfreetype --enable-libfribidi \
--enable-libgme --enable-libgsm --enable-libiec61883 --enable-libmodplug \
--enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopencv \
--enable-libopenjpeg --enable-libopus --enable-libpulse \
--enable-librubberband --enable-librtmp --enable-libshine --enable-libsmbclient \
--enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtheora \
--enable-libtwolame --enable-libv4l2 --enable-libvidstab --enable-libvo-amrwbenc --enable-libvorbis --enable-libvpx \
--enable-libwavpack --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxcb --enable-libxcb-shm \
--enable-libxcb-xfixes --enable-libxcb-shape --enable-libxvid --enable-libzimg --enable-libzmq --enable-libzvbi \
--enable-openal --enable-opencl --enable-opengl --enable-openssl \
--enable-sdl2 --enable-vaapi --enable-vdpau --enable-videotoolbox --enable-libxcb --enable-xlib \
--enable-zlib --enable-cuda --enable-cuvid --enable-nvenc --enable-pic --enable-libnpp

make -j$(nproc)
checkinstall --pkgname=FFmpeg --deldoc=yes --deldoc=yes --nodoc --fstrans=no --backup=no \
--install=no --maintainer=linuxpro@linuxpro.com.br --pkgversion="5:$(date +%Y%m%d)-git" -y

cp *_amd64.deb /root/files_bin/
cp *_amd64.deb /tmp/
cd /tmp/
ar vx *_amd64.deb
rm -f *_amd64.deb control.tar.gz debian-binary
tar -vxf data.tar.xz
rm -rf usr/share/doc
rm -rf usr/share/man

rm -f data.tar.xz
tar -vcJf ffmpeg-git_sdk8_Ubuntu1604_64Bits.xz usr
mv ffmpeg-git_sdk8_Ubuntu1604_64Bits.xz /root/files_bin/
cp -aR usr/* /usr/
rm -rf /tmp/usr


### Compile OBS GIT Version
cd /root/
apt-get -y --force-yes install libavcodec-dev libavfilter-dev libavdevice-dev libfdk-aac-dev libfdk-aac0
apt-get -y --force-yes install libx11-dev libgl1-mesa-dev libpulse-dev libxcomposite-dev libxinerama-dev libv4l-dev
apt-get -y --force-yes install libfontconfig-dev qtbase5-dev libqt5x11extras5-dev libx264-dev libudev-dev libfreetype6-dev
apt-get -y --force-yes install libxcb-xinerama0-dev libxcb-shm0-dev libjack-jackd2-dev libcurl4-openssl-dev

wget -c https://github.com/jp9000/obs-studio/archive/master.zip
unzip master.zip && rm -f master.zip
cd obs-studio-master
mkdir build && cd build
cmake -DUNIX_STRUCTURE=0 -DCMAKE_INSTALL_PREFIX="/opt/obs-studio-portable" ..
make -j$(nproc) && make install

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

cd /root/
cp -aR /opt/obs-studio-portable /root/files_bin/
cd /root/files_bin/
tar -zcvf obs-studio-portable_`date +"%Y%m%d"`.tgz obs-studio-portable
rm -rf /root/files_bin/obs-studio-portable

