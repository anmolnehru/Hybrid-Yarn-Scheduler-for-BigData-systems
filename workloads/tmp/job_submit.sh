date +%s
echo "Data is Being Generated..."
echo ""
./gridmix-generate.sh
echo "Data generation completed..."
echo ""
date +%s
echo "Starting the jobs"
echo ""
./gridmix-sleepjobs.sh syn.json
echo "Jobs completed"
echo ""
date +%s
