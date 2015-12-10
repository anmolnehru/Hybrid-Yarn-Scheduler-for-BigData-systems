#!/bin/sh

echo "Start: " $(date +%s)
(time hive --hiveconf hive.execution.engine=mr -f sample-queries-tpcds/query21.sql --database tpcds_text_db_1_10) 2> output/tpcds_query21_mr.out
echo "End: " $(date +%s)

