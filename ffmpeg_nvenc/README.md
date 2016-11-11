## Oficinadotux -- FFMPEG + NVENC
[Youtube Channel OficinadoTux](https://www.youtube.com/channel/UCfh_Dbh1LrqGVJQ1k2f6DgQ)

 - FFMPEG git, 3.2, 2.8.6
 - NVIDIA SDK 6.0.1, 7.0.1
 - OBS-STUDIO git Portable
 - Ubuntu, Kubuntu, Lubuntu 16.04 64Bits, Linux Mint 18 64Bits
 - Precisa ter uma placa NVIDIA e drivers atualizados
 - Recomendo Instalar o OBS-STUDIO PORTABLE git + FFMPEG 3.2


## OBS-STUDIO PORTABLE git + FFMPEG 3.2

```bash
## Para Instalar, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!

sudo su
add-apt-repository ppa:obsproject/obs-studio -y
add-apt-repository ppa:djcj/hybrid -y
apt-get update 
apt-get install -y ffmpeg libfdk-aac0 obs-studio libopenh264-3
apt-get install -y librubberband2v5 libkvazaar3 libnetcdf11 libzimg2 libebur128-1

wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb
dpkg -i libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb && rm -f libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb

cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/ffmpeg-2.8.6_sdk6_Ubuntu1604_64Bits.xz
tar -vxf ffmpeg-2.8.6_sdk6_Ubuntu1604_64Bits.xz
chown -R root:root usr/*
cp -aR usr/* /usr/
rm -rf usr ffmpeg-2.8.6_sdk6_Ubuntu1604_64Bits.xz

wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/ffmpeg-3.2_sdk7_Ubuntu1604_64Bits.xz
tar -vxf ffmpeg-3.2_sdk7_Ubuntu1604_64Bits.xz
chown -R root:root usr/*
cp -aR usr/* /usr/
rm -rf usr ffmpeg-3.2_sdk7_Ubuntu1604_64Bits.xz

wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/obs-studio-portable_20161111.tgz
tar -xvf obs-studio-portable_20161111.tgz
rm -f obs-studio-portable_20161111.tgz
mv obs-studio-portable /opt/

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

```


## FFMPEG 3.2 + NVENC SDK 7.0.1

```bash
## Para Instalar o Binario, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!

sudo su
add-apt-repository ppa:djcj/hybrid -y
apt-get update 
apt-get install -y ffmpeg libfdk-aac0 libopenh264-3
apt-get install -y librubberband2v5 libkvazaar3 libnetcdf11 libzimg2 libebur128-1

wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb
dpkg -i libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb && rm -f libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb

cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/ffmpeg-3.2_sdk7_Ubuntu1604_64Bits.xz
tar -vxf ffmpeg-3.2_sdk7_Ubuntu1604_64Bits.xz
chown -R root:root usr/*
cp -aR usr/* /usr/
rm -rf usr ffmpeg-3.2_sdk7_Ubuntu1604_64Bits.xz

```


## Compile FFMPEG 2.8.6 on Ubuntu 16.04 64Bits

[Compile FFMPEG 2.8.6 + NVENC](https://gist.github.com/jniltinho/96bb45bec18a90d0d33448ee67c28cc7)


## Compile FFMPEG 3.2 on Ubuntu 16.04 64Bits

[Compile FFMPEG 3.2 + NVENC](https://gist.github.com/jniltinho/9273dc133796062c13ca739d17862125)

## FFMPEG STATIC BIN

 - [Site](https://www.johnvansickle.com/ffmpeg/)
 - [Git Last Release 64Bits](https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz)
 - [Release 3.2 64Bits](https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz)


## Compile OBS-STUDIO

 - [OBS-STUDIO 0.16.2](https://github.com/jp9000/obs-studio/wiki/Install-Instructions#manually-compiling-on-debian-based-distros)
 - [OBS Releases](https://github.com/jp9000/obs-studio/releases)
