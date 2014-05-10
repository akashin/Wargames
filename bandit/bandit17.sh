#!/bin/bash

. bandit.sh 17
execute "ls -l"
submit "cat passwords.new | grep -v -f passwords.old"
