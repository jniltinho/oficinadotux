# Oficinadotux -- FFMPEG + NVENC

[Youtube Channel OficinadoTux](https://www.youtube.com/channel/UCfh_Dbh1LrqGVJQ1k2f6DgQ)

 - FFMPEG git, 3.2.2, 2.8.6
 - NVIDIA SDK 6.0.1, 7.1.9, 8.0.14
 - Ubuntu, Kubuntu, Lubuntu 16.04 64Bits, Linux Mint 18 64Bits
 - Precisa ter uma placa NVIDIA e drivers atualizados

## Install Compiled files (FFMPEG and OBS STUDIO)

```bash
## Para Instalar, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!
## Use por sua conta e risco, no meu Desktop Ubuntu 16.04 funcionou perfeitamente.
## Esses são Binarios já compilados do OBS e FFMPEG, só funciona em sistemas 64Bits.
## Para Reportar Bug use o link: https://github.com/jniltinho/oficinadotux/issues.
## Se possivel com Print de Tela ou a saida com erro na linha de comando.
## Você pode executar os binarios via linha de comando: obs-portable e ffmpeg.
## Desse modo fica facil aparecer os erros.
```

### Ubuntu Xenial

```bash
apt-get update
add-apt-repository ppa:jonathonf/ffmpeg-4 -y
add-apt-repository ppa:obsproject/obs-studio -y
apt-get update
apt-get -y install ffmpeg obs-studio

cd /tmp/
wget -O ubuntu-xenial.zip https://gitlab.com/jniltinho/docker-ffmpeg/-/jobs/199843935/artifacts/download
unzip ubuntu-xenial.zip
rm -f ubuntu-xenial.zip
cd dist
tar -xzf *.tar.gz
cp -vaR usr/* /usr/
cp -vaR opt/* /opt/
rm -rf opt usr
```

### Ubuntu Bionic

```bash
apt-get update
add-apt-repository ppa:jonathonf/ffmpeg-4 -y
add-apt-repository ppa:obsproject/obs-studio -y
apt-get update
apt-get -y install ffmpeg obs-studio

cd /tmp/
wget -O ubuntu-bionic.zip https://gitlab.com/jniltinho/docker-ffmpeg/-/jobs/199843936/artifacts/download
unzip ubuntu-bionic.zip
rm -f ubuntu-bionic.zip
cd dist
tar -xzf *.tar.gz
cp -vaR usr/* /usr/
cp -vaR opt/* /opt/
rm -rf opt usr
```

### Ubuntu Disco

```bash
apt-get update
add-apt-repository ppa:obsproject/obs-studio -y
apt-get update
apt-get -y install ffmpeg obs-studio

cd /tmp/
wget -O ubuntu-disco.zip https://gitlab.com/jniltinho/docker-ffmpeg/-/jobs/199843937/artifacts/download
unzip ubuntu-disco.zip
rm -f ubuntu-disco.zip
cd dist
tar -xzf *.tar.gz
cp -vaR usr/* /usr/
cp -vaR opt/* /opt/
rm -rf opt usr
```

## Compile FFMPEG on Ubuntu 16.04 64Bits

[Compile FFMPEG + NVENC](https://gist.github.com/jniltinho/9273dc133796062c13ca739d17862125)

## Compile FFMPEG 2.8.6 on Ubuntu 16.04 64Bits

[Compile FFMPEG 2.8.6 + NVENC](https://gist.github.com/jniltinho/96bb45bec18a90d0d33448ee67c28cc7)

## OBS-STUDIO

 - [OBS-STUDIO 18](https://github.com/jp9000/obs-studio/wiki/Install-Instructions#manually-compiling-on-debian-based-distros)
 - [OBS Releases](https://github.com/jp9000/obs-studio/releases)
