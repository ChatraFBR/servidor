# 1.- INSTALACIÓN DE SITIO WEB CON LA PAGINA WEB DEL PROFE Y TRANSFERENCIA DE ARCHIVOS CON GIT

# Instalamos git
apt-get install git -y

# Creamos el espacio para el sitio web
mkdir -p /var/www/server-test/html

# Clonamos el repositorio
git clone https://github.com/cloudacademy/static-website-example.git /var/www/server-test/html

# Le damos permisos
chown -R www-data:vagrant /var/www
chmod -R 775 /var/www

# Configuración del sitio de nginx para server-test
cp -v /vagrant/config/server-test /etc/nginx/sites-available/

# Habilitamos el sitio en nginx
ln -s /etc/nginx/sites-available/server-test /etc/nginx/sites-enabled/

# Reiniciamos nginx
systemctl reload nginx
