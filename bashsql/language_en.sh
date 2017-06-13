#!/bin/bash

##########################################"
# Author wangjinjian"
# Date   2009-2-10"
# email  1526330277@qq.com "
##########################################"

##########################################
# bashsql system information
##########################################
ln_simple_help(){
	echo "all|ALL            	Show all databases or tables"
	echo "exit|EXIT|bye|BYE  	Exit bashsql"
	echo "clear|ClEAR|-c|-C  	Clear screen"
	echo "show|SHOW 'table name'    Show the table information"
	echo "db|DB|-d|-D		Swap database"
	echo "search|SEARCH|-s|-S	Search table(fuzzy query)"
	echo "others			Database name or MySQL commond"
}

ln_simple_begin(){
	`echo clear`
	echo_sys "Thank you for using bashsql. This's a simple command line tool."
	echo_sys "You can input '-h' or 'help' for help, enjoy youself!"
}

ln_simple_end(){
	echo_sys "Goodbye! Web Site:http://www.sunlightcloud.com"
}

##########################################
# handler.sh choose database information
##########################################
ln_error_input_choosedatabse(){
	echo_error "The database $dbcmd dose not exits!"
}

ln_error_input_nochoosedb(){
	echo_error "You must choose a database in the beginning!"
}


ln_success_input_choosedatabse(){
	echo_success "You have choosed $dbcmd database!"	
}

ln_need_input_choosedatabse(){
	echo_input "Please choose a MySQL database:"
}

##########################################
# handler.sh input mysql commond information
##########################################
ln_need_input_cmd(){
	echo_input "Please input MySQL command:"
}

##########################################
# dbrunner.sh information
##########################################
ln_error_db_start(){
	echo_error "MySQL service started failed!"
}

ln_sucess_db_start(){
	echo_success "MySQL service has been started!"
}

ln_db_start(){
	echo_db "Start MySQL service..."
}

ln_db_start_wait(){
	echo_db "Waiting for MySQL start..."	
}

ln_db_start_already(){
	echo_db "MySQL service already started."
}

ln_db_stop(){
	echo_db "Stop MySQL..."
}

ln_db_run(){
	echo_db "MySQL is runing."
}



##########################################
# ui.sh information
##########################################
ln_echo_db(){
	echo -n "MySQL"
}

ln_echo_error(){
	echo -n "ERROR"
}

ln_echo_input(){
	echo -n "INPUT"
}

ln_echo_success(){
	echo -n "SUCCESS"
}


ln_echo_dbcmd(){
	echo -n "bashsql>"
}













