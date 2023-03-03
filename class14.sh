#!/bin/bash

# Scheduling jobs

logfile=job_result.log

echo "The script ran ath the following time: $(date)" >> $logfile

# at 15:32 -f ./myscript.sh
# atq shows the pending jobs
# atrm 2 -> removes job number 2
# at 18:00 081623 -> runs on August 16th 2023
