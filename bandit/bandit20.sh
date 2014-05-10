#!/bin/bash

. bandit.sh 20
execute "ls -l"
execute "./suconnect"
execute "mkdir -p /tmp/acid/"
# execute "
# 	nohup cat /etc/bandit_pass/bandit20 | nc -d -l 33333 < /dev/null > /tmp/acid/b21 2>&1 &
# 	./suconnect 33333
# "
submit "cat /tmp/acid/b21"
