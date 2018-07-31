#!/bin/bash

(
    flock -x 200;    
    runuser -l ciserver -c "cd ~/windows-docker-machine && vagrant up --provider virtualbox 2016"
) 200>/var/lock/vagrantlockfile
