#!/bin/bash

if [[ $1 == "rabbitmq_ubuntu" ]];then

	sudo apt-get install erlang-nox
	sudo apt-get update
	sudo apt-get install rabbitmq-server
fi

if [[ $1 == "rabbitmq_centos" ]];then

	yum install erlang
	yum install rabbitmq-server
fi


