#!/bin/bash

maxdelay=$((10*60))  # 14 hours from 9am to 11pm, converted to minutes
for ((i=1; i<=9; i++)); do
	    delay=$(($RANDOM%maxdelay)) # pick an independent random delay for each of the 20 runs
	        (sleep $((delay*60)); /scripts/random_load_stress_ab.sh) & # background a subshell to wait, then run the shell script
	done
