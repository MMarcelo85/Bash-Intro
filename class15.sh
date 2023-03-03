#!/bin/bash

# Scheduling jobs part 2

logfile=job_result.log

/usr/bin/echo "The script ran ath the following time: $(/usr/bin/date)" >> $logfile

# using cron instead of at
# full path to the command is the best practice ->  Security concerns

# crontab -e
