#!/bin/bash

##########################################"
# Author wangjinjian"
# Date   2009-2-10"
# email  1526330277@qq.com "
##########################################"

##########################################
# handler.sh parameters
##########################################

OPENMySQL="$DB_HOME/local/bin/mysql -h $IP_ADDR -u $MYSQL_USERNAME -p$MYSQL_PASSWORD"

##########################################
# handler.sh db command
##########################################
cmd_all_db(){
	echo "select SCHEMA_NAME as '' from information_schema.SCHEMATA" |$OPENMySQL
}

cmd_choose_db(){
	dbresult=`echo "select 1 from information_schema.SCHEMATA where schema_name = '$dbcmd'" |$OPENMySQL|tail -1`
}

##########################################
# handler.sh table command
##########################################
cmd_show_table(){
	echo "SELECT * FROM $tablename" |$OPENMySQL $dbcmd
}

cmd_all_tables(){
	echo "SELECT TABLE_NAME as '' FROM information_schema.TABLES WHERE TABLE_SCHEMA='$dbcmd'" |$OPENMySQL
}

cmd_search_tables(){
	echo "SELECT TABLE_NAME as '' FROM information_schema.TABLES WHERE TABLE_SCHEMA='$dbcmd' AND TABLE_NAME LIKE '%$tablename%'" |$OPENMySQL
}

cmd_excute_sql(){
	echo "$tablecmd $tablename" | $OPENMySQL $dbcmd
}

##########################################
# dbrunner.sh table command
##########################################
cmd_check_db_running(){
	dbcheckresult=`$DB_HOME/local/bin/mysqladmin -u $MYSQL_USERNAME --password=$MYSQL_PASSWORD ping 2>/dev/null| grep alive|wc -l`
}

cmd_db_start(){
	$DB_HOME/local/bin/mysqld_safe --user=root &
}

cmd_db_stop(){
	$DB_HOME/local/bin/mysqladmin -u $MYSQL_USERNAME --password=$MYSQL_PASSWORD shutdown
}



