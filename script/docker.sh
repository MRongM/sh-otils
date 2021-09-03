
if [[ $1 == "install_docker" ]];then
	curl -sSL https://get.daocloud.io/docker | sh
fi

if [[ $1 == "remove_docker" ]];then
	sudo apt-get remove docker docker-engine docker.io containerd runc
fi

if [[ $1 == "repo_docker" ]];then
	sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
fi
