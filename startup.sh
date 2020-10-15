#!/bin/bash

__log_file=/data/$HOSTNAME-logs/startup.log
__git_directory=/home/scc/applications/startup/FCRE-data

#git clone --depth=1 git@github.com:FLARE-forecast/FCRE-data.git

cd $__git_directory
date > $HOSTNAME 2>&1 | tee -a $__log_file
git add $HOSTNAME 2>&1 | tee -a $__log_file
git commit -m "$(date)" 2>&1 | tee -a $__log_file
git pull --rebase 2>&1 | tee -a $__log_file
git push 2>&1 | tee -a $__log_file

