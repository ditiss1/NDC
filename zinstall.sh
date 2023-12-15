#!/bin/bash
sudo apt update
sudo apt install gcc -y 
sudo apt install tree -y
sudo apt install apache2 -y
sudo apt install apache2-utils -y
sudo apt install libgd-dev -y
sudo apt install libc6 -y
sudo apt install php -y
sudo apt install python -y
sudo apt install python3 -y
sudo apt install autoconf -y
sudo apt install make -y
sudo apt install wget -y
sudo apt install unzip -y
sudo ./configure --with-httpd-conf=/etc/apache2/sites-enabled/
sudo make all
sudo make install-groups-users
sudo passwd nagios
sudo usermod -aG nagios www-data
sudo make install
sudo make install-daemoninit
sudo make install-webconf
sudo make install-config
sudo make install-commandmode
sudo a2enmod cgi
sudo a2enmod rewrite
sudo systemctl restart apache2
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin
sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg
sudo systemctl restart apache2
sudo systemctl restart nagios

history -c
