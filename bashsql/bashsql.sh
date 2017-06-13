#!/bin/bash

##########################################"
# Author wangjinjian"
# Date   2009-2-10"
# email  1526330277@qq.com "
##########################################"

export bashsql_home=/bashsql
. $bashsql_home/dbconf.sh
. $bashsql_home/dbcommand.sh
. $bashsql_home/ui.sh
. $bashsql_home/handler.sh
. $bashsql_home/dbrunner.sh
. $bashsql_home/language_en.sh

##########################################
# bashsql main
##########################################

ln_simple_begin
	
db_start

#to choose a database
handler_choose_database

#to execute mysql commond
handler_excute_commond

db_stop

ln_simple_end



