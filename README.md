# Oficinadotux -- FFMPEG + NVENC
[Youtube Channel OficinadoTux](https://www.youtube.com/channel/UCfh_Dbh1LrqGVJQ1k2f6DgQ)

 - FFMPEG 3.1.3, 2.8.6
 - NVIDIA SDK 6.0.1
 - Ubuntu, Kubuntu, Lubuntu 16.04 64Bits, Linux Mint 18 64Bits
 - Precisa ter uma placa NVIDIA e drivers atualizados
 - Recomendo Instalar o FFMPEG 3.1.3


# Bin FFMPEG 3.1.3 + NVENC

```bash
## Para Instalar o Binario, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!

sudo su
apt-get -y install git-core ffmpeg

cd /tmp/
git clone https://github.com/jniltinho/oficinadotux
cd /tmp/oficinadotux/ffmpeg_nvenc
tar -vxf ffmpeg-3.1.3_nvenc_Ubuntu1604_64Bits.xz
chown -R root:root /tmp/oficinadotux/ffmpeg_nvenc/usr/*
cp -aR /tmp/oficinadotux/ffmpeg_nvenc/usr/* /usr/
rm -rf /tmp/oficinadotux/ffmpeg_nvenc/usr

```



# Bin FFMPEG 2.8.6 + NVENC

```bash
## Para Instalar o Binario, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!

sudo su
apt-get -y install git-core ffmpeg

cd /tmp/
git clone https://github.com/jniltinho/oficinadotux
cd /tmp/oficinadotux/ffmpeg_nvenc
tar -vxf ffmpeg-2.8.6_nvenc_Ubuntu1604_64Bits.xz
chown -R root:root /tmp/oficinadotux/ffmpeg_nvenc/usr/*
cp -aR /tmp/oficinadotux/ffmpeg_nvenc/usr/* /usr/
rm -rf /tmp/oficinadotux/ffmpeg_nvenc/usr

```

# Compile FFMPEG 2.8.6 on Ubuntu 16.04 64Bits

[Compile FFMPEG 2.8.6 + NVENC](https://gist.github.com/jniltinho/96bb45bec18a90d0d33448ee67c28cc7)


# FFMPEG STATIC BIN

 - [Site](https://www.johnvansickle.com/ffmpeg/)
 - [Git Last Release 64Bits](https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz)
 - [Release 3.1.3 64Bits](https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz)

