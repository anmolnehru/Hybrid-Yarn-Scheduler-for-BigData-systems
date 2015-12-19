#############################################

#generate data once
#./gridmix-generate.sh
#being done in the master fil

#echo "#############################################"
#a=`date +%s`
#echo "100 Mbps, Deafult Latency"
#
#python network_controller_vm.py 100 100
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""

#############################################


echo "#############################################"
a=`date +%s`
echo "100 Mbps"


python network_controller_vm.py 100 100> silent
./gridmix-sleepjobs.sh syn.json
b=`date +%s`
time=$((b-a))
echo "Time taken = $time"
echo ""


###############################################
##
##echo "#############################################"
##a=`date +%s`
#echo "100 Mbps, 100ms  Latency"
#
#python network_controller_vm.py 100 100 > silent
#
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
#echo "100 Mbps, 10ms Latency"
#a=`date +%s`
#
#
#python network_controller_vm.py 100 10 > silent
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
#echo "100 Mbps, 1ms Latency"
#a=`date +%s`
#
#python network_controller_vm.py 100 1 > silent
#
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""
