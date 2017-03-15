## Oficinadotux -- FFMPEG + NVENC
[Youtube Channel OficinadoTux](https://www.youtube.com/channel/UCfh_Dbh1LrqGVJQ1k2f6DgQ)

 - FFMPEG git, 3.2.2, 2.8.6
 - NVIDIA SDK 6.0.1, 7.1.9
 - Ubuntu, Kubuntu, Lubuntu 16.04 64Bits, Linux Mint 18 64Bits
 - Precisa ter uma placa NVIDIA e drivers atualizados


## OBS-STUDIO + FFMPEG

```bash
## Para Instalar, execute os passos abaixo:
## EXECUTAR COMO ROOT !!!!!
## Use por sua conta e risco, no meu Desktop Ubuntu 16.04 funcionou perfeitamente.
## Esses são Binarios já compilados do OBS e FFMPEG, só funciona em sistemas 64Bits.
## Para Reportar Bug use o link: https://github.com/jniltinho/oficinadotux/issues.
## Se possivel com Print de Tela ou a saida com erro na linha de comando.
## Você pode executar os binarios via linha de comando: obs-portable e ffmpeg.
## Desse modo fica facil aparecer os erros.

sudo su

cd /tmp/
wget https://github.com/jniltinho/oficinadotux/raw/master/ffmpeg_nvenc/install_nvenc.sh

chmod +x install_nvenc.sh
bash install_nvenc.sh
rm -f install_nvenc.sh


```



## Compile FFMPEG on Ubuntu 16.04 64Bits

[Compile FFMPEG + NVENC](https://gist.github.com/jniltinho/9273dc133796062c13ca739d17862125)


## Compile FFMPEG 2.8.6 on Ubuntu 16.04 64Bits

[Compile FFMPEG 2.8.6 + NVENC](https://gist.github.com/jniltinho/96bb45bec18a90d0d33448ee67c28cc7)


## OBS-STUDIO

 - [OBS-STUDIO 18](https://github.com/jp9000/obs-studio/wiki/Install-Instructions#manually-compiling-on-debian-based-distros)
 - [OBS Releases](https://github.com/jp9000/obs-studio/releases)
