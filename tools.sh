#!/bin/bash

if [[ $1 == '-h' ]];then
  echo "tools help"
  echo "  -h  help"
  echo "  -i  yum-init"
  echo "  -c  centos-cmd  exec:source tools.sh -c"
fi

if [[ $1 == '-i' ]];then
  bash yum-init.sh
fi

if [[ $1 == '-c' ]];then
  source centos-cmd.sh
fi

