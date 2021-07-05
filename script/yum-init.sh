#!/bin/bash

yumd=/etc/yum.repo.d
mv $yumd /etc/yum.repo.d.bak
mkdir $yumd
cd $yumd
wget $1 -O Centos.repo
yum clean
yum makecache
cd -