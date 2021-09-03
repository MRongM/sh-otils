if [[ $1 == "ssh_key" ]];then
   ssh-keygen -t rsa -C idskof@sina.cn
   echo "编辑~/.ssh/config"
   echo "==============="
   echo 'Host github.com
Hostname github.com
User MRongM
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa
Port 22'
   echo "==============="
fi

if [[ $1 == "ssh_test" ]];then
  ssh -T git@$2
fi
