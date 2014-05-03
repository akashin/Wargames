#!/bin/bash

. bandit.sh 5
execute "ls -l"
execute "ls -la ./inhere"
execute "file ./inhere/*"
KEYPATH=`execute "find inhere/ -type f -size 1033c ! -perm /a=x"`
submit `execute "cat $KEYPATH"`
