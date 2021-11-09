#!/bin/bash

mkdir /home/vagrant/mongodb
cd /home/vagrant/mongodb
rm -rf data

mlaunch init \
    --replicaset \
    --config 3 \
    --mongos 2 \
    --arbiter \
    --sharded 2 \
    --binarypath /home/vagrant/db_binaries/percona-server-mongodb-4.4.9-10-x86_64.glibc2.17/bin/ \
    --auth \
    --username pmm \
    --password secret \
    --auth-db admin \
    --bind_ip_all
