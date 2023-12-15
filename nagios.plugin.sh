#!/bin/bash
sudo apt install unzip -y
sudo apt install automake -y
sudo apt install autotools-dev -y
sudo apt install  bc -y
sudo apt install dc -y
sudo apt install build-essential -y
sudo apt install gawk -y
sudo apt install gettext -y
sudo apt install libmcrypt-dev -y
sudo apt install libnet-snmp-perl -y
sudo apt install libssl-dev -y
sudo apt install snmp -y
sudo ./tools/setup
sudo ./configure
sudo make
sudo make install
