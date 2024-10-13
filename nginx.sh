#!/bin/bash
sudo apt update -y
if [[ -d /etc/nginx ]]
then
	echo "nginx installed already"
else
	echo -e "\033[0;33m installing nginx"
	sleep 2
	sudo apt install nginx -y
	systemctl enable nginx
	systemctl start nginx
	echo "hello world from $(hostname -f)" > /var/www/html/index.html
fi

