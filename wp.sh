#!/bin/bash

if [ ! -f /root/installed ]; then
  echo "Instalasi WordPress pertama kali..."
  
  if [ ! -f wp-config.php ]; then
    bash <(curl -s https://raw.githubusercontent.com/ethanpil/wordpress-on-replit/master/install-wordpress-on-replit.sh) -y
    
    touch /root/installed
  else
    echo "Installed"
    touch /root/installed
  fi
  
  rm -f install-wordpress-on-replit.sh

else
  echo "WordPress sudah terinstal. Menjalankan server PHP..."
fi

php -S 0.0.0.0:8000 -t .
