sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y apache2
sudo apt-get install -y php7.2
sudo apt-get install -y php7.2-mysql
sudo apt-get install -y php7.2-cli php7.2-common libapache2-mod-php7.2 php7.2 php7.2-curl
sudo apt-get install -y php7.2-mbstring
sudo a2enmod rewrite
sudo a2enmod ssl

sudo systemctl start apache2
sudo systemctl enable apache2

hostname | sudo tee /var/www/html/index.html
sudo touch /var/www/html/phpinfo.php
echo "\"<?php phpinfo(); ?>"\" | sudo tee /var/www/html/phpinfo.php