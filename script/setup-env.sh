#run script 
#source setup-env.sh
# 

RED='\E[1;31m'      
GREEN='\E[1;32m'
YELOW='\E[1;33m'
BLUE='\E[1;34m'
PINK='\E[1;35m'
RES='\E[0m' 


if test -z $1
then
	echo -e "${RED}env name must specific${RES}"
	echo "shell will exit in 10s"
    sleep 10
    exit 1;
fi

echo -e "${GREEN}[1] setup-env ${1} ${RES}"
virtualenv ${1}

echo -e "${GREEN}[2] activate env ${1} ${RES}"
source $1/bin/activate

require=requirements.txt
if [ -f $require ];then
    echo -e "${GREEN}[3] install ${require} ${RES}"
	pip3 install -r $require
fi

if [ $?==0 ];then
	echo -e "${GREEN}ALL DONE!${RES}"
fi
