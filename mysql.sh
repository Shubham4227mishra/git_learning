#!/bin/bash
if [[ -d /etc/mysql ]]
then
	echo -e "\033[0;33m mysql installed"
	sleep 3
else
	echo "installing mysql"
	sudo apt update -y
	sudo apt install mysql-server -y
	systemctl enable mysql
	systemctl start mysql
	echo "exit code" $?
fi

