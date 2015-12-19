#############################################
sudo ipfw pipe 1 config bw  1Gbit/s
sudo ipfw pipe 2 config bw  1Gbit/s
sudo ipfw pipe 3 config bw  1Gbit/s

echo "#############################################"
a=`date +%s`
echo "100 Mbps, Deafult Latency"
./gridmix-generate.sh
b=`date +%s`
./gridmix-sleepjobs.sh syn.json
time=$((b-a))
echo "Time taken = $time"
echo ""

#############################################

sudo ipfw pipe 1 config bw  1Gbit/s delay 50ms 
sudo ipfw pipe 2 config bw  1Gbit/s delay 50ms 
sudo ipfw pipe 3 config bw  1Gbit/s delay 50ms 

echo "#############################################"
a=`date +%s`
echo "100 Mbps, 50ms delay"
./gridmix-generate.sh
b=`date +%s`
./gridmix-sleepjobs.sh syn.json
time=$((b-a))
echo "Time taken = $time"
echo ""


#############################################
sudo ipfw pipe 1 config bw  1Gbit/s delay 100ms 
sudo ipfw pipe 2 config bw  1Gbit/s delay 100ms 
sudo ipfw pipe 3 config bw  1Gbit/s delay 100ms 

echo "#############################################"
a=`date +%s`
echo "100 Mbps, 100ms  Latency"
./gridmix-generate.sh
b=`date +%s`
./gridmix-sleepjobs.sh syn.json
time=$((b-a))
echo "Time taken = $time"
echo ""



#############################################

sudo ipfw pipe 1 config bw  1Gbit/s delay 10ms 
sudo ipfw pipe 2 config bw  1Gbit/s delay 10ms 
sudo ipfw pipe 3 config bw  1Gbit/s delay 10ms 

echo "#############################################"
echo "100 Mbps, 10ms Latency"
a=`date +%s`
./gridmix-generate.sh
b=`date +%s`
./gridmix-sleepjobs.sh syn.json
time=$((b-a))
echo "Time taken = $time"
echo ""






#############################################

sudo ipfw pipe 1 config bw  1Gbit/s delay 1ms 
sudo ipfw pipe 2 config bw  1Gbit/s delay 1ms 
sudo ipfw pipe 3 config bw  1Gbit/s delay 1ms 

echo "#############################################"
echo "100 Mbps, 1ms Latency"
a=`date +%s`
./gridmix-generate.sh
b=`date +%s`
./gridmix-sleepjobs.sh syn.json
time=$((b-a))
echo "Time taken = $time"
echo ""
