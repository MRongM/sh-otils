#!/bin/bash

ormenforce(){
	# 批量反向删除文件 $1=dir $2=donotrm
	lis=$(find $1 -maxdepth=1 -type f | grep -v $2 )
	read "input?Are You sure to remove ? [Y/n] "
	case $input in 
		[yY][eE][sS]|[yY])
		for i in $lis; do
			rm -f $i;
			echo "${i} removed";
		done
		;;
	esac
}

oisprocessrun(){
	# $1 运行进程名称
	count=$(ps -ef |grep $1|grep -V "grep"|wc -l)
	if [  $count -gt 1 ];then
		echo "$1 is running";
		return 0;
	else
		echo "$1 is not running";
		return 1;
	fi
}

oproxy(){
	#修改代理 $1=ip:port $2=/etc/profile
	echo "export http_proxy=http://$1" >>$2;
	echo "export https_proxy=http://$1" >>$2;
	source $2;
}

onoproxy(){
	#修改代理 $1=ip:port $2=/etc/profile
	echo "export no_proxy=http://$1" >>$2
	source $2
}

ocost(){
	# script run cost
	starttime=`date +'%Y-%m-%d %H:%M:%S'`
	code=`sh $1`
	endtime=`date +'%Y-%m-%d %H:%M:%S'`
	start_seconds=$(date --date="$starttime" +%s);
	end_seconds=$(date --date="$endtime" +%s);
	echo "$1 cost: $((end_seconds-start_seconds)) s"
	return 0
}

odate(){
	# current time
	stime=`date +'%Y-%m-%d %H:%M:%S'`;
	echo $stime
	return 0
}

orn2n(){
	# windows file to unix
	dos2unix $1
}

oport(){
	#check port
	netstat -anlp |grep $1
}

