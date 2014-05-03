#!/bin/bash

. bandit.sh 4
execute "ls -l"
execute "ls -la ./inhere"
execute "file ./inhere/*"
submit "cat inhere/-file07"
