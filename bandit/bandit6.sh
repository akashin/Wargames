#!/bin/bash

. bandit.sh 6
execute "ls -l"
execute "ls -la ./inhere"
execute "file ./inhere/*"
KEYPATH=`execute "find / -size 33c -user bandit7 -group bandit6 2> /dev/null"`
submit `execute "cat $KEYPATH"`
