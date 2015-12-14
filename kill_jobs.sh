#!/bin/bash
for i in `seq 088 999`;
do
         yarn application -kill application_1448835095947_0$i 
done    
        
