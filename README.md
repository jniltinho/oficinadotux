# Oficinadotux -- FFMPEG + NVENC
[Youtube Channel OficinadoTux](https://www.youtube.com/channel/UCfh_Dbh1LrqGVJQ1k2f6DgQ)

 - FFMPEG 2.8.6
 - NVIDIA SDK 6.0.1


# Install bin FFMPEG Support NVENC -- Xbuntu 16.04 64Bits

```bash
sudo apt-get -y install git-core
cd /tmp/
git clone https://github.com/jniltinho/oficinadotux
cd oficinadotux/ffmpeg_nvenc
tar -vxf ffmpeg-2.8.6_nvenc_Ubuntu1604_64Bits.xz
sudo cp -aR usr/* /usr/
rm -rf /tmp/usr
```
