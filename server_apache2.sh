#!/bin/bash


echo "Verificando atualização..."
apt-get update
echo "Atualizando Servidor..."
apt-get upgrade -y
echo "Instalando Apache2..."
apt-get install apache2 -y
echo "Instalando o Unzip..."
apt-get install unzip -y
cd /
cd tmp
echo "Baixando aplicação disponível no GitHub..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
echo "Copiando aplicação para a pasta do Apache...."
cp -r ./* /var/www/html/
