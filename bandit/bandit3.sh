#!/bin/bash

. bandit.sh 3
execute "ls -l"
execute "ls -la ./inhere"
submit "cat inhere/.hidden"
