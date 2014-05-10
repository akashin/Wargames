#!/bin/bash

. bandit.sh 14
execute "cat /etc/bandit_pass/bandit14 | nc localhost 30000"
submit "cat /etc/bandit_pass/bandit14 | nc localhost 30000 | tail -n 2 | head -n 1"
