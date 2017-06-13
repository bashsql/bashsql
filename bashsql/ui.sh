#!/bin/bash

##########################################"
# Author wangjinjian"
# Date   2009-2-10"
# email  1526330277@qq.com "
##########################################"

##########################################
# echo style
##########################################
SETCOLOR_SUCCESS="echo -en \\033[1;32;44m"
SETCOLOR_FAILURE="echo -en \\033[1;31;44m"
SETCOLOR_INPUT="echo -en \\033[1;36;44m"
SETCOLOR_MYSQLCMD="echo -en \\033[1;33;44m"
SETCOLOR_MYSQL="echo -en \\033[1;37;44m"
SETCOLOR_NORMAL="echo -en \\033[0;39m"
SETCOLOR_SYS="echo -en \\033[1;35;44m"

echo_sys(){
	$SETCOLOR_SYS
	echo $1
	$SETCOLOR_NORMAL
	return 0
}

echo_db(){
	$SETCOLOR_MYSQL
	echo -n "["
	ln_echo_db
	echo -n "]: "
	echo $1
	$SETCOLOR_NORMAL
	return 0
}

echo_error(){
	$SETCOLOR_FAILURE
	echo -n "["	
	ln_echo_error
	echo -n "]: "
	echo $1
	$SETCOLOR_NORMAL
	return 0
}

echo_input(){
	$SETCOLOR_INPUT	
	echo -n "["	
	ln_echo_input
	echo -n "]: "
	echo $1
	$SETCOLOR_NORMAL
	return 0
}

echo_success(){
	$SETCOLOR_SUCCESS	
	echo -n "["
	ln_echo_success
	echo -n "]: "
	echo $1
	$SETCOLOR_NORMAL
	return 0
}

echo_dbcmd(){
	$SETCOLOR_MYSQLCMD
	ln_echo_dbcmd
	$SETCOLOR_NORMAL
	return 0
}
