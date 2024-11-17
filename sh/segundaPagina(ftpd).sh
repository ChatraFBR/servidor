# 1.- INSTALACIÓN DEL SITIO WEB Y TRANSFERENCIA DE ARCHIVOS CON FTP

# Creamos el espacio
sudo mkdir -p /var/www/fernando-web/html/

# Establecemos permisos para la carpeta web
sudo chown -R www-data:fernando /var/www/fernando-web/
sudo chmod -R 775 /var/www/fernando-web/

# Creamos un enlace simbólico a la carpeta web en el directorio FTP del usuario
sudo ln -s /var/www/fernando-web/ /home/fernando/ftp

# Configuración del sitio de nginx para fernando-web
sudo cp -v /vagrant/config/fernando-web /etc/nginx/sites-available/

# Habilitamos el  nginx
sudo ln -s /etc/nginx/sites-available/fernando-web /etc/nginx/sites-enabled/

# Reiniciamos nginx 
sudo systemctl reload nginx

# Establecemos www-data en el mismo grupo de fernando, para que cuando metamos archivos
sudo usermod -aG fernando www-data

