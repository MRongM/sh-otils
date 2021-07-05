#!/bin/bash

if [[ $1 == '-h' ]];then
  echo "tools help"
  echo "  -h  help"
  echo "  -i  yum-init"
  echo "  -c  centos-cmd  exec:source tools.sh -c"
  echo "  -w  crawl exec:bash tools.sh -w [name]"
fi

source script/django.sh

if [[ $1 == '-g' || $1 == 'g' ]];then
  git commit -am "auto update"
  git push origin master
fi

if [[ $1 == '-i' ]];then
  bash yum-init.sh
fi

if [[ $1 == '-c' ]];then
  source centos-cmd.sh
fi

if [[ $1 == '-w' ]];then
  bash crawl.sh $2
fi

#source
if [[ $1 == 'sp' ]];then
   
   http_proxy=http://localhost:7890
   https_proxy=http://localhost:7890
fi

#source
if [[ $1 == 'up' ]];then
   unset http_proxy
   unset https_proxy
fi

#fast git
if [[ $1 == 'fg' ]];then
  git commit -am "update"
  git push origin master
fi
