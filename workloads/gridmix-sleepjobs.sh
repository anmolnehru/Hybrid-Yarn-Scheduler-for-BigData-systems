#!/bin/bash

TRACE=${1:-syn.json}
OPTIMISTIC_POLICY=${2:-only_optimistic}
LOCATION=${3:-/user/hadoop/gridmix-kon}

JOB_DESC_FILENAME=`basename $TRACE`

. /home/hadoop/yarnpp/env.sh

date

hadoop fs -rm -r $LOCATION/gridmix
hadoop fs -rm /user/hadoop/$JOB_DESC_FILENAME
hadoop fs -put $TRACE /user/hadoop

export HADOOP_CLASSPATH=$HADOOP_CLASSPATH:$HADOOP_YARN_HOME/share/hadoop/tools/lib/*:/home/hadoop/commons-math3-3.1.1.jar

echo "launching gridmix"

hadoop jar $HADOOP_COMMON_HOME/share/hadoop/tools/lib/hadoop-gridmix-2.4.2-SNAPSHOT.jar -libjars $HADOOP_COMMON_HOME/share/hadoop/tools/lib/hadoop-rumen-2.4.2-SNAPSHOT.jar \
  -Dgridmix.job-producer.is.synthetic=true \
  -Dgridmix.job-submission.policy=REPLAY \
  -Dgridmix.job.type=SLEEPJOB \
  -Dgridmix.job-submission.default-queue=default \
  -Dgridmix.sleep.fake-locations=10 \
  -Dgridmix.compression-emulation.enable=false \
  -Dgridmix.job.seq=1 \
  -Dgridmix.client.submit.threads=20 \
  -Dgridmix.client.pending.queue.depth=10 \
  $LOCATION /user/hadoop/$JOB_DESC_FILENAME
#  -generate  407374182400 \
#  -Dyarn.job.optimistic-containers-policy=only_optimistic \

