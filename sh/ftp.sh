#!/bin/bash

# 1.-INSTALACION FTP

# Actualizamos los repositorios
sudo apt-get update

# Instalamos vsftpd y nginx
sudo apt-get install vsftpd -y

# Creamos un usuario
sudo adduser fernando
echo "fernando:1234" | sudo chpasswd

# Creamos la carpeta de FTP del usuario
sudo mkdir -p /home/fernando/ftp

# Ajustamos permisos en la carpeta de inicio del usuario
sudo chown -R fernando:fernando /home/fernando
sudo chmod -R 775 /home/fernando

# Generamos el certificado para vsftpd
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt -subj "/C=ES/ST=Granada/L=La Zubia/O=fernando/CN=fernandoweb/emailAddress=lgardia026@ieszaidinvergeles.org"

# Configuración de vsftpd
sudo cp -v /vagrant/config/vsftpd.conf /etc/vsftpd.conf

# Reiniciamos vsftpd para aplicar cambios
sudo systemctl restart vsftpd

