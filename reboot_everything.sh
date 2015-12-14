#! /bin/bash
source env.sh
sudo rm -r /home/ubuntu/storage/hdfs/hdfs_nn_dir_2_4/*
sudo rm -r /home/ubuntu/storage/hdfs/hdfs_dn_dir_2_4/*
sudo rm -r /home/hadoop/yarnpp/hadoop-2.4.2-SNAPSHOT/logs/*
sudo rm -r /home/ubuntu/storage/data/local/tmp/*
sudo rm -r /home/hadoop/yarnpp/yarn-logs/*
hadoop namenode -format

