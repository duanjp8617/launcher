#/bin/sh

LOCAL_DIR=/home/djp02/tmp/adaptive-federated-learning-master
CONTAINER_DIR=/etc/fl
IMAGE_NAME=djp/fl:latest

# a space must be inserted between consecutive array element
# CLIENTS and CPUS must have the same size
CLIENTS=(client1 client2 client3)
CPUS=(2 2 2)

# A counter
i=0