#!/bin/bash

##########################################"
# Author wangjinjian"
# Date   2009-2-10"
# email  1526330277@qq.com "
##########################################"

`rm -rf /bashsql`
`rm -rf /usr/local/bin/bashsql`

INSTALL_HOME="/bashsql"
echo "Now install bashsql..."
`echo cp -r bashsql $INSTALL_HOME`
sleep 2
`chmod 777 -R $INSTALL_HOME/*`
echo "Install bashsql to $INSTALL_HOME'"
echo "Please Input MySQL Home(/usr):"
read db_home

if [ "$db_home" != "" ]
then
	echo "DB_HOME=$db_home" >> $INSTALL_HOME/dbconf.sh
else
	echo "DB_HOME=/usr" >> $INSTALL_HOME/dbconf.sh
fi

echo "Please Input MySQL IP Address(localhost):"
read db_ip

if [ "$db_ip" != "" ]
then
	echo "IP_ADDR=$db_ip" >> $INSTALL_HOME/dbconf.sh
else
	echo "IP_ADDR=localhost" >> $INSTALL_HOME/dbconf.sh
fi

echo "Please Input MySQL USERNAME(root):"
read db_username

if [ "$db_username" != "" ]
then
	echo "MYSQL_USERNAME=$db_username" >> $INSTALL_HOME/dbconf.sh
else
	echo "MYSQL_USERNAME=root" >> $INSTALL_HOME/dbconf.sh
fi

echo "Please Input MySQL PASSWORD(root):"
read db_password

if [ "$db_password" != "" ]
then
	echo "MYSQL_PASSWORD=$db_password" >> $INSTALL_HOME/dbconf.sh
else
	echo "MYSQL_PASSWORD=root" >> $INSTALL_HOME/dbconf.sh
fi


cat $INSTALL_HOME/bashsql > /usr/local/bin/bashsql
chmod 755 /usr/local/bin/bashsql
#chown root:sys /usr/local/bin/bashsql
sleep 1
echo "The bashsql install has been finished!"







