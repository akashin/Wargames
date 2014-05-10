#!/bin/bash

. bandit.sh 16
execute "nmap -p 31000-32000 localhost"
execute "cat /etc/bandit_pass/bandit16 | openssl s_client -quiet -connect localhost:31790"
execute "cat /etc/bandit_pass/bandit16 | openssl s_client -quiet -connect localhost:31790 2> /dev/null"
execute "mkdir /tmp/sshkey/"
execute "cat /etc/bandit_pass/bandit16 | openssl s_client -quiet -connect localhost:31790 2> /dev/null | tail -n 28 | head -n 27 > /tmp/sshkey/key"
execute "chmod 700 /tmp/sshkey/key"
submit "ssh -o \"StrictHostKeyChecking no\" -A -t -i /tmp/sshkey/key bandit17@localhost cat /etc/bandit_pass/bandit17 2> /dev/null"
