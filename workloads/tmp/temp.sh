sudo ipfw pipe 1 config bw  10Mbit/s
 65 sudo ipfw pipe 2 config bw  10Mbit/s
 66 sudo ipfw pipe 3 config bw  10Mbit/s
 67 
 68 #############################################
 69 date +%s
 70 echo ""
 71 ./gridmix-generate.sh
 72 echo "Data generation completed..."
 73 echo ""
 74 date +%s
 75 echo ""
 76 ./gridmix-sleepjobs.sh syn.json
 77 echo "Jobs completed"
 78 echo ""
 79 
 80 sudo ipfw pipe 1 config bw  1Mbit/s
 81 sudo ipfw pipe 2 config bw  1Mbit/s
 82 sudo ipfw pipe 3 config bw  1Mbit/s
 83 
 84 date +%s
 85 echo ""
 86 ./gridmix-generate.sh
 87 echo "Data generation completed..."
 88 echo ""
 89 date +%s
 90 
 91 echo ""
 92 ./gridmix-sleepjobs.sh syn.json
 93 echo "Jobs completed"
 94 echo ""
 95 date +%s
 96 
 97 
 98 
 99 sudo ipfw pipe 1 config bw  1Gbit/s
100 sudo ipfw pipe 2 config bw  1Gbit/s
101 sudo ipfw pipe 3 config bw  1Gbit/s
102 
103 
104 date +%s
105 
106 echo ""
107 ./gridmix-generate.sh
108 echo "Data generation completed..."


