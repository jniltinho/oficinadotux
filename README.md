## Oficinadotux -- FFMPEG + NVENC
[Youtube Channel OficinadoTux](https://www.youtube.com/channel/UCfh_Dbh1LrqGVJQ1k2f6DgQ)

 - FFMPEG git, 3.2.2, 2.8.6
 - NVIDIA SDK 6.0.1, 7.1.9
 - Ubuntu, Kubuntu, Lubuntu 16.04 64Bits, Linux Mint 18 64Bits
 - Precisa ter uma placa NVIDIA e drivers atualizados


## OBS-STUDIO + FFMPEG 3.2.2

```bash
## Para Instalar, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!

sudo su

cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/install_nvenc.sh

chmod +x install_nvenc.sh
bash install_nvenc.sh
rm -f install_nvenc.sh


```


## FFMPEG 3.2.2 + NVENC SDK 7.1.9

```bash
## Para Instalar o Binario, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!

sudo su
apt-get -y install ffmpeg
add-apt-repository ppa:djcj/hybrid -y
apt-get update 
apt-get -y install libfdk-aac0 libopenh264-3
apt-get -y install librubberband2v5 libkvazaar3 libnetcdf11 libzimg2 libebur128-1

wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb
dpkg -i libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb && rm -f libvidstab1.0_0.98b-dmo1+deb8u1_amd64.deb

cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/ffmpeg-3.2.2_sdk7_Ubuntu1604_64Bits.xz
tar -vxf ffmpeg-3.2.2_sdk7_Ubuntu1604_64Bits.xz
chown -R root:root usr/*
cp -aR usr/* /usr/
rm -rf usr ffmpeg-3.2.2_sdk7_Ubuntu1604_64Bits.xz

```


## Compile FFMPEG 3.2 on Ubuntu 16.04 64Bits

[Compile FFMPEG 3.2 + NVENC](https://gist.github.com/jniltinho/9273dc133796062c13ca739d17862125)


## Compile FFMPEG 2.8.6 on Ubuntu 16.04 64Bits

[Compile FFMPEG 2.8.6 + NVENC](https://gist.github.com/jniltinho/96bb45bec18a90d0d33448ee67c28cc7)


## OBS-STUDIO

 - [OBS-STUDIO 0.16.2](https://github.com/jp9000/obs-studio/wiki/Install-Instructions#manually-compiling-on-debian-based-distros)
 - [OBS Releases](https://github.com/jp9000/obs-studio/releases)
