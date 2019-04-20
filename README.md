# FFMPEG + OBS STUDIO + NVENC

 * FFMPEG 4.1.3
 * OBS STUDIO 23.1.0
 * Ubuntu, Kubuntu, Lubuntu 16.04|18.04|19.04 64Bits
 * Precisa ter uma placa NVIDIA e drivers atualizados

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
wget https://github.com/jniltinho/oficinadotux/raw/master/dist/xenial/ffmpeg-obs-nvenc_2.0.0%2Bxenial-1_amd64.tar.gz
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
wget https://github.com/jniltinho/oficinadotux/raw/master/dist/bionic/ffmpeg-obs-nvenc_2.0.0%2Bbionic-1_amd64.tar.gz
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
wget https://github.com/jniltinho/oficinadotux/raw/master/dist/disco/ffmpeg-obs-nvenc_2.0.0%2Bdisco-1_amd64.tar.gz
tar -xzf *.tar.gz
cp -vaR usr/* /usr/
cp -vaR opt/* /opt/
rm -rf opt usr
```

## GitLab Project FFMPEG + OBS + NVENC on Ubuntu 16.04|18.04|19.04 64Bits

[Compile FFMPEG + NVENC](https://gitlab.com/jniltinho/docker-ffmpeg)

## OBS-STUDIO

 * [OBS-STUDIO 23.1.0](https://github.com/jp9000/obs-studio/wiki/Install-Instructions#manually-compiling-on-debian-based-distros)
 * [OBS Releases](https://github.com/jp9000/obs-studio/releases)
