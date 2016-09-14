# Oficinadotux -- FFMPEG + NVENC
[Youtube Channel OficinadoTux](https://www.youtube.com/channel/UCfh_Dbh1LrqGVJQ1k2f6DgQ)

 - FFMPEG 2.8.6, 3.1.3
 - NVIDIA SDK 6.0.1
 - Ubuntu, Kubuntu, Lubuntu, Linux Mint 16.04 64Bits
 - Precisa ter uma placa NVIDIA e drivers atualizados
 - Recomendo Instalar o FFMPEG 3.1.3


# FFMPEG 2.8.6 + NVENC

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

# FFMPEG 3.1.3 + NVENC

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


# Compilar FFMPEG 2.8.6 suporte NVENC siga o script abaixo
[Install_FFMPEG_NVENC](https://gist.github.com/jniltinho/96bb45bec18a90d0d33448ee67c28cc7)
