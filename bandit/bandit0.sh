#!/bin/bash

. bandit.sh 0
execute "ls -l"
submit `execute "cat readme"`
