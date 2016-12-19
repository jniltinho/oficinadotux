# FFMPEG 3.2 + NVENC build script

This script will compile FFMPEG with Nvidia NVENC SDK 7.0.1 support enabled.
It can also build OBS Studio or Simple Screen Recorder using that FFmpeg build
thus providing NVENC for OBS.

It is brought to you by [LinuxPro](http://www.linuxpro.com.br/)

## FFMPEG 3.2 + OBS-STUDIO GIT + NVIDIA SDK 7.0.1

## Usage

Clone the repo then use the `build.sh` script to compile the binaries

```bash
sudo su
cd /root/
apt-get -y --force-yes install git-core
git clone https://github.com/jniltinho/ffmpeg-nvenc.git
cd ffmpeg-nvenc
./build.sh --dest /opt/ffmpeg-nvenc --obs

echo '[Desktop Entry]
Version=1.0
Name=OBS Studio NVENC
GenericName=Streaming/Recording Software
Comment=OBS Studio (NVenc enabled)
Exec=/opt/ffmpeg-nvenc/scripts/obs.sh %U
Icon=/opt/ffmpeg-nvenc/share/icons/hicolor/256x256/apps/obs.png
Terminal=false
Type=Application
Categories=AudioVideo;Recorder;
StartupNotify=true' > /usr/share/applications/obs-nvenc.desktop

```

The following command line options are available:

* -d / --dest <path> : Destination path for FFmpeg / OBS
* -o / --obs : Build OBS Studio
* -h / --help : Usage

## TODO

* Add support for multiple distributions (currently only tested on Ubuntu 16.04)

## Supporting the authors

If you find this script useful, you can consider
supporting [LinuxPro](http://www.linuxpro.com.br)
