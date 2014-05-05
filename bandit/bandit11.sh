#!/bin/bash

. bandit.sh 11
execute "ls -l"
execute "cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'"
submit "cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' | awk '{ print \$NF }'"
