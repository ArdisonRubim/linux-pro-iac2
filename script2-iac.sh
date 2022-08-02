#!/bin/bash

echo "Inciando!"
echo "-------------"
echo "Atualizando o sistema"

apt-get update
apt-get upgrade -y

echo "Instalando o servidor"

apt-get install apache2 -y

echo "Instalando o descompactador"
apt-get install unzip -y

echo "Acessando diretório"

cd /tmp

echo "Baixando e descompactando arquivo"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Acessando diretório e copiando arquivos"

cd linux-site-dio-main
cp -R * /var/www/html




