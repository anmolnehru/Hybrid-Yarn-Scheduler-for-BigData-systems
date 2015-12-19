#! /bin/bash
sudo ipfw pipe 1 config bw  100Mbit/s delay 100ms
sudo ipfw pipe 2 config bw  100Mbit/s delay 100ms
sudo ipfw pipe 3 config bw  100Mbit/s delay 100ms

echo "#############################################"
a=`date +%s`
echo "100 Mbps, 100ms delay"
./gridmix-generate.sh
./gridmix-sleepjobs.sh syn.json
b=`date +%s`
time=$((b-a))
echo "Time taken = $time"
echo ""

