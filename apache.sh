site-dio#!/bin/bash

# Infraestrutura como código
# Script de Provisionamento de um Servidor Web

echo "Atualizando o sistema"

sudo apt install apache2 -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get unzip -y

echo "Baixando a aplicação do Github no Diretório tmp"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando..."
unzip main.zip

echo "Copiando arquivos para o Diretório padrão do Apache"

cd linux-site-dio-main
cp -R * /var/www/html

echo "Fim"
