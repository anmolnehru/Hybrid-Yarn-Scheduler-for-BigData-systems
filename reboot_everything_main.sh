#! /bin/bash
cd /home/hadoop/yarnpp/hadoop-2.4.2-SNAPSHOT/sbin
stop-all.sh
sh /home/hadoop/yarnpp/reboot_everything.sh 
ssh vm2 'bash -s' < /home/hadoop/yarnpp/reboot_everything.sh
ssh vm3 'bash -s' < /home/hadoop/yarnpp/reboot_everything.sh 
start-all.sh
hadoop fs -mkdir /apps
hadoop fs -mkdir /apps/tez-0.4.1-incubating
cd /home/hadoop/yarnpp
hadoop fs -put tez-0.4.1-incubating/* /apps/tez-0.4.1-incubating
 
