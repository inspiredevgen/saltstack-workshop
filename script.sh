#!/bin/bash
# Author: Mohamed Bakayoko

sudo dnf update -y
sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel
sudo dnf -y install mariadb105-server
systemctl start httpd
systemctl enable httpd

usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 0775 /var/www

find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;

wget https://github.com/projectworldsofficial/online-examination-systen-in-php/archive/master.zip
unzip master.zip
sudo cp -Rf online-examination-systen-in-php-master/* /var/www/html