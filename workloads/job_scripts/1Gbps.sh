##############################################
#
#echo "#############################################"
#a=`date +%s`
#echo "1Gbps, Deafult Latency"
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
echo "1Gbps"
python network_controller_vm.py 1000 > silent

./gridmix-sleepjobs.sh syn.json
b=`date +%s`
time=$((b-a))
echo "Time taken = $time"
echo ""


##############################################
#
#echo "#############################################"
#a=`date +%s`
#echo "1Gbps, 100ms  Latency"
#
#
#python network_controller_vm.py 1000 100 > silent
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
#echo "1Gbps, 10ms Latency"
#a=`date +%s`
#
#
#python network_controller_vm.py 1000 10 > silent
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
#echo "1Gbps, 1ms Latency"
#a=`date +%s`
#
#
#python network_controller_vm.py 1000 1 > silent
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""
