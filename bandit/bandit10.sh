#!/bin/bash

. bandit.sh 10
execute "ls -l"
execute "base64 -d data.txt"
submit "base64 -d data.txt | awk '{ print \$NF }'"
