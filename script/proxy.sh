
if [[ $1 == "set_proxy" ]];then
   export http_proxy="http://localhost:7890"
   export https_proxy="http://localhost:7890"
fi


if [[ $1 == "unset_proxy" ]];then
   unset http_proxy
   unset https_proxy
fi
