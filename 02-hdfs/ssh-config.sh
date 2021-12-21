#!/bin/bash

echo $HADOOP_USER_PASSWORD | sudo -S bash -c 'cat conf/hosts >> /etc/hosts'

ssh-keygen -t rsa ~/.ssh/id_rsa # generate ssh key for the node

#HOSTNAMES=`awk '{print $2}' conf/hosts` # get all hostnames in conf/hosts file

# for hostname in $HOSTNAMES
# do
# 	ssh-copy-id $hostname # copy node ssh public key to all nodes in the cluster
# done
