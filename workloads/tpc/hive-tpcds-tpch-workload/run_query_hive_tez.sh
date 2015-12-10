#!/bin/sh

containerJvm="-Xmx4600m"
containerSize=4800

echo "Start: " $(date +%s)
(time hive --hiveconf hive.execution.engine=tez --hiveconf hive.tez.container.size=$containerSize --hiveconf hive.tez.java.opts=$containerJvm -f sample-queries-tpcds/query21.sql --database tpcds_text_db_1_2) 2> output/tpcds_query21_tez.out
echo "End: " $(date +%s)

