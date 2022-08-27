#!/bin/bash

echo "Atualizando SO"
sudo apt update
sudo apt upgrade -y
echo "Instalando Servidor Apache"
sudo apt install apache2 -y
sudo chmod 777 /var/www/html
sudo rm /var/www/html/index.html
echo "Instalando Gerenciadores de arquivos zip"
sudo apt install unzip
sudo apt-get install zip
sudo unzip /tmp/linux-site-dio-main.zip
sudo mv /tmp/linux-site-dio-main/* /var/www/html
sudo rmdir /tmp/linux-site-dio-main
sudo rm -rf /tmp/linux-site-dio-main.zip


