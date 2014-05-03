#!/bin/bash

. bandit.sh 7
execute "ls -l"
execute "du -h data.txt"
submit "grep millionth data.txt | awk '{ print \$2 }'"
