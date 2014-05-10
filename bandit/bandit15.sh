#!/bin/bash

. bandit.sh 15
execute "cat /etc/bandit_pass/bandit15 | openssl s_client -quiet -connect localhost:30001"
submit "cat /etc/bandit_pass/bandit15 | openssl s_client -quiet -connect localhost:30001 2> /dev/null | tail -n 2 | head -n 1"
