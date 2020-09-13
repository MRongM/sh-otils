#!/bin/bash

rmenforce(){
	# 批量反向删除文件
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