#!/bin/bash

##########################################"
# Author wangjinjian"
# Date   2009-2-10"
# email  1526330277@qq.com "
##########################################"

##########################################
# check db status
##########################################
check_db_running(){
	cmd_check_db_running
	if [ $dbcheckresult -ne 0 ]
	then 
		return 0  #running
	else
		return 1  #not running
	fi
}

##########################################
# test db status
##########################################
test_db_status(){
	check_db_running
	if [ $? -ne 0 ]
	then
		ln_error_db_start
		exit 1
	else
		ln_sucess_db_start
	fi
}

##########################################
# db start & stop
##########################################
db_start(){
	check_db_running
	if [ $? -ne 0 ]
	then
        	dbstatus=1
        	ln_db_start
        	cmd_db_start
        	ln_db_start_wait	
        	sleep 5

		test_db_status
	else
        	dbstatus=0
        	ln_db_start_already

	fi
}

db_stop(){
	if [ $dbstatus -ne 0 ]
	then
        	ln_db_stop
        	cmd_db_stop
	else
        	ln_db_run
	fi
}


