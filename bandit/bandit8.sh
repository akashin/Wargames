#!/bin/bash

. bandit.sh 8
execute "ls -l"
execute "du -h data.txt"
submit "cat data.txt | sort | uniq -u"
