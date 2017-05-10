#!/bin/bash

echo "Finding slaves and writing them to hadoop configuration"

getent hosts hadoop-slave | awk '{print $2 }' >> /usr/local/hadoop/etc/hadoop/slaves
if [[ -v HADOOP_CLUSTER_MASTER ]]
then
    echo "This is the cluster master - starting hadoop."
    echo -e "\n"
    $HADOOP_HOME/sbin/start-dfs.sh
    echo -e "\n"
    $HADOOP_HOME/sbin/start-yarn.sh
    echo -e "\n"
    bash
else
    echo "This is a cluster slave - do nothing."
    bash
fi