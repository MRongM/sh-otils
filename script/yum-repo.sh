#!/bin/bash

if [[ $1 == "ali_repo" ]];then
  url="http://mirrors.aliyun.com/repo/Centos-7.repo"
  yumd=/etc/yum.repo.d
  mv $yumd /etc/yum.repo.d.bak
  mkdir $yumd
  cd $yumd
  wget ${url} -O Centos.repo
  yum clean
  yum makecache
fi
