#!/bin/bash

# Check to make sure the user has entered exactly 2 arguments
if [ $# -ne 2 ]
then
	echo "Usage: backup.sh <source_directory> <target_directory>"
	echo "Please try again."
	exit 1
fi

# Check to see if rsync is intsalled
if ! command -v rsync > /dev/null 2>&1 # Send stde & stdo to null
then
	echo "This scrypt requieres rsync to run."
	echo "Install it and try again."
	exit 2
fi

# Capture the current date, stroe it in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# options for rsync

rsync_options="-avb --backup-dir $/current_date --delete"
# a: archive mode, v: verbose, b:not replace files, create backup files
# --backup-dir (additionally to b): copy the backup file to somewhere else
# $2/$current_date : Where to copy the backup files (also creates the  dir )
# --delete: make sure that the target dir is a clone of the source (true sync)
# --dry-run: (most important option) Its a simulation, a pretend backup. Doesnt copy anything, its a demo 

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log


