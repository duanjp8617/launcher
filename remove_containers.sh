#/bin/bash

source $(dirname $0)/param.sh

sudo docker stop server
sudo docker rm server

while [ $i -lt ${#CLIENTS[@]} ]
do

    sudo docker stop ${CLIENTS[$i]}
    sudo docker rm ${CLIENTS[$i]}

    i=`expr $i + 1`
done