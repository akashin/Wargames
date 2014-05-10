#!/bin/bash

. bandit.sh 19
execute "ls -l"
submit "./bandit20-do cat /etc/bandit_pass/bandit20"
