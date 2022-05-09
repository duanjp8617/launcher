#/bin/bash

source $(dirname $0)/param.sh

SERVER=server

# remove the SingleRun.csv before launching the server
rm -f $LOCAL_DIR/results/SingleRun.csv

# use --cpus="2" to limit the maximum cpu usage of the server container
sudo docker run --privileged --network=host -v $LOCAL_DIR:$CONTAINER_DIR --name $SERVER -it -d djp/fl:latest python /etc/fl/server.py

# check the output of the server container with: sudo docker logs server