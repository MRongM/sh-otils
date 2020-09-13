#！/bin/bash

isprocessrun(){
	# $1 运行进程名称
	count = $(ps -ef |grep $1|grep -V "grep"|wc -l)
	if [  $count -gt 1 ];then
		echo "$1 is running";
		return 0;
	else:
		echo "$1 is not running";
		return 1;
	fi
}