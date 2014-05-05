#!/bin/bash

. bandit.sh 9
execute "ls -l"
execute "du -h data.txt"
execute "strings data.txt | grep ^="
submit "strings data.txt | grep ^= | tail -n 1 | awk '{ print \$2 }'"
