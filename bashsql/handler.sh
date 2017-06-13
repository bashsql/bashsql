#!/bin/bash

##########################################"
# Author wangjinjian"
# Date   2009-2-10"
# email  1526330277@qq.com "
##########################################"

##########################################
# parameters
##########################################
#database whether choose ok (0 is no; 1 is yes)
dbresult=0
#mysql commond whether finish (0 is no; 1 is yes)
commondbye=0

dbname=""
dbname=""

tablecmd=""
tablename=""

##########################################
# show dataabse
##########################################
database_commond(){
	case "$dbcmd" in
		show|SHOW)
			ln_error_input_nochoosedb
			;;
		search|SEARCH|-s|-S)
			ln_error_input_nochoosedb
			;;	
		db|DB|-d|-D)
			ln_error_input_nochoosedb
			;;
		all|ALL)
			cmd_all_db
			;;
		exit|EXIT|bye|BYE)
			dbresult=1
			commondbye=1
			;;
		clear|ClEAR|-c|-C)
			`echo clear`
			;;
		help|HELP|-h|-H)
			ln_simple_help
			;;		
		*)
			cmd_choose_db
			if [ "$dbresult" != "1" ]
			then
				ln_error_input_choosedatabse
			else 
				ln_success_input_choosedatabse
			fi
			;;				
	esac
	
}

##########################################
# choose a database
##########################################
handler_choose_database(){
	while [ "$dbresult" != "1" ]
	do
		ln_need_input_choosedatabse
		echo_dbcmd
		read  dbcmd dbname

		database_commond
	done
}

##########################################
# show table
##########################################
table_commond(){
	case "$tablecmd" in
		show|SHOW)
			cmd_show_table
			;;
		all|ALL)
			cmd_all_tables
	 		;;
		exit|EXIT|bye|BYE)
			commondbye=1
			;;
		db|DB|-d|-D)
			dbresult=0
			handler_choose_database
			;;
		search|SEARCH|-s|-S)
			cmd_search_tables
	 		;;
		clear|ClEAR|-c|-C)
			`echo clear`
			;;
		help|HELP|-h|-H)
			ln_simple_help
			;;	
		*)
			cmd_excute_sql
			;;
	esac

}

##########################################
# excute mysql commond
##########################################
handler_excute_commond(){
	while [ "$commondbye" != "1" ]
	do
		ln_need_input_cmd
		echo_dbcmd  
		read tablecmd tablename

		table_commond

	done
}


