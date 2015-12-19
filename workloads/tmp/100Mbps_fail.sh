#! /bin/bash
sudo ipfw pipe 1 config bw  100Mbit/s delay 100ms
sudo ipfw pipe 2 config bw  100Mbit/s delay 100ms
sudo ipfw pipe 3 config bw  100Mbit/s delay 100ms

echo "#############################################"
a=`date +%s`
echo "100 Mbps, 1s delay"
./gridmix-generate.sh
b=`date +%s`
./gridmix-sleepjobs.sh syn.json
time=$((b-a))
echo "Time taken = $time"
echo ""

