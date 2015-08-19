#!/bin/bash
# this script will download csf into root directory
cd /root
## most of current distributions don't have libwww-perl installed by default
yum install perl-libwww-perl -y
rm -fv csf.tgz
wget https://download.configserver.com/csf.tgz
tar -xzf csf.tgz
cd csf
sh install.sh
