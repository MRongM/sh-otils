if [[ $1 == "ssh_key" ]];then
   ssh-keygen -t rsa -C idskof@sina.cn
   echo "编辑.ssh/config"
   vim .ssh/config   
fi

if [[ $1 == "ssh_test" ]];then
  ssh -T git@$2
fi
