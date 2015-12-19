#############################################

##This should behave like infinite bandwidth
#
#echo "#############################################"
#a=`date +%s`
#echo "non-gda, Deafult Latency"
#
#
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""

#############################################


echo "#############################################"
a=`date +%s`
echo "non-gda, 50ms delay"

python network_controller_vm.py 10000 > silent

./gridmix-sleepjobs.sh syn.json
b=`date +%s`
time=$((b-a))
echo "Time taken = $time"
echo ""

#
##############################################
#
#
#echo "#############################################"
#a=`date +%s`
#echo "non-gda, 100ms  Latency"
#
#
#python network_controller_vm.py 10000 100 > silent
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
#echo "non-gda, 10ms Latency"
#a=`date +%s`
#
#
#python network_controller_vm.py 10000 10 > silent
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
#echo "non-gda, 1ms Latency"
#a=`date +%s`
#
#
#python network_controller_vm.py 10000 1 > silent
#./gridmix-sleepjobs.sh syn.json
#b=`date +%s`
#time=$((b-a))
#echo "Time taken = $time"
#echo ""
