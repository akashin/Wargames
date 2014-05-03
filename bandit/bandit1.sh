#!/bin/bash

. bandit.sh 1
execute "ls -l"
submit `execute "cat ./-"`
