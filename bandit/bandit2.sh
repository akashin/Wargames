#!/bin/bash

. bandit.sh 2
execute "ls -l"
submit `execute "cat spaces\ in\ this\ filename"`
