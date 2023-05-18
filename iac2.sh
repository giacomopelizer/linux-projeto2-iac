#!/bin/bash

echo "Atualização em andamento"
apt-get update
apt-get upgrade -y
echo "Instalando aplicações"
apt-get install apache2 unzip -y

echo "Download do arquivo em andamento"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Processo finalizado"
