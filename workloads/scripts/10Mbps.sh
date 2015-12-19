##############################################
#
#echo "#############################################"
#a=`date +%s`
#echo "10 Mbps, Deafult Latency"
#
#
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""
#
##############################################


echo "#############################################"
a=`date +%s`
echo "10 Mbps"

python network_controller_vm.py 10 > silent
./gridmix-sleepjobs.sh syn.json
b=`date +%s`
time=$((b-a))
echo "Time taken = $time"
echo ""


##############################################
#
#echo "#############################################"
#a=`date +%s`
#echo "10 Mbps, 100ms  Latency"
#
#
#python network_controller_vm.py 10 100 > silent
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""
#
#
#
##############################################
#
#
#echo "#############################################"
#echo "10 Mbps, 10ms Latency"
#a=`date +%s`
#
#
#python network_controller_vm.py 10 10 > silent
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""
#
#
#
#
#
#
##############################################
#
#
#echo "#############################################"
#echo "10 Mbps, 1ms Latency"
#a=`date +%s`
#
#
#python network_controller_vm.py 10 1 > silent
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""
