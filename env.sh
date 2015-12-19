#!/bin/bash

COMMON_VERSION=${COMMON_VERSION:-2.4.2-SNAPSHOT}
HDFS_VERSION=${HDFS_VERSION:-2.4.2-SNAPSHOT}
YARN_VERSION=${YARN_VERSION:-2.4.2-SNAPSHOT}


TEZ_VERSION=${TEZ_VERSION:-0.4.1-incubating}
HIVE_VERSION=${HIVE_VERSION:-1.2.1}
OOZIE_VERSION=${OOZIE_VERSION:-4.0.1} #FIXME: OOZIE only needed on RM and NN's machine

ENV="YARN_CONF_DIR=/home/hadoop/yarnpp/conf \
  YARN_LOG_DIR=/mnt/data/1/local/log \
  HADOOP_CONF_DIR=/home/hadoop/yarnpp/conf \
  JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64 \
  HADOOP_USER_CLASSPATH_FIRST=1 \
  HADOOP_COMMON_HOME=/home/hadoop/yarnpp/hadoop-${COMMON_VERSION} \
  HADOOP_HDFS_HOME=/home/hadoop/yarnpp/hadoop-${HDFS_VERSION} \
  HADOOP_YARN_HOME=/home/hadoop/yarnpp/hadoop-${YARN_VERSION} \
  HADOOP_HOME=/home/hadoop/yarnpp/hadoop-${YARN_VERSION} \
  YARN_HOME=/home/hadoop/yarnpp/hadoop-${YARN_VERSION}  \
  TEZ_HOME=/home/hadoop/yarnpp/tez-${TEZ_VERSION} \
  HIVE_HOME=/home/hadoop/yarnpp/hive-${HIVE_VERSION} \
  OOZIE_INSTALL=/home/hadoop/yarnpp/oozie-${OOZIE_VERSION} 
"

case "$1" in
  (-q|--quiet)
    for i in ${ENV}
    do
      export $i
    done
    ;;
  (*)
    echo "setting variables:"
    for i in $ENV
    do
      echo $i
      export $i
    done
    ;;
esac

export PATH=$PATH:/home/hadoop/yarnpp/hadoop-${COMMON_VERSION}/bin:/home/hadoop/yarnpp/hadoop-${COMMON_VERSION}/sbin:${HIVE_HOME}/bin:${OOZIE_INSTALL}/bin
#export LD_LIBRARY_PATH=${HADOOP_COMMON_HOME}/share/hadoop/common/lib/native/:${LD_LIBRARY_PATH}
export JAVA_LIBRARY_PATH=${LD_LIBRARY_PATH}

