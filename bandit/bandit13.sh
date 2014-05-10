#!/bin/bash

. bandit.sh 13
execute "ls -l"
submit "ssh -o \"StrictHostKeyChecking no\" -A -t -i sshkey.private bandit14@localhost cat /etc/bandit_pass/bandit14 2> /dev/null"
