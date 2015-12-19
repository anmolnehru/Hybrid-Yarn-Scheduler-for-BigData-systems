a=`date +%s`

sleep 3

b=`date +%s`
c=$((b-a))
echo "Time taken = $c"
