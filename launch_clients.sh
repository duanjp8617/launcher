#/bin/bash

source $(dirname $0)/param.sh

TARGET_PROGRAM=$CONTAINER_DIR/client2.py

while [ $i -lt ${#CLIENTS[@]} ]
do
    sudo docker run --privileged --network=host --cpus="${CPUS[$i]}" -v $LOCAL_DIR:$CONTAINER_DIR --name ${CLIENTS[$i]} -it -d $IMAGE_NAME python $TARGET_PROGRAM

    i=`expr $i + 1`
done

# check the output of the server container with: sudo docker logs server