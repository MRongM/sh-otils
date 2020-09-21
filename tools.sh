#!/bin/bash

rmenforce(){
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

oproxy(){
	#修改代理 $1=ip:port $2=/etc/profile
	echo "export http_proxy=http://$1" >>$2
	echo "export https_proxy=http://$1" >>$2
	source $2
}

onoproxy(){
	#修改代理 $1=ip:port $2=/etc/profile
	echo "export no_proxy=http://$1" >>$2
	source $2
}
