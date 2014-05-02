#!/bin/bash

sshpass -p "bandit0" ssh -o StrictHostKeyChecking=no bandit0@bandit.labs.overthewire.org "ls"

KEY=`sshpass -p "bandit0" ssh -o StrictHostKeyChecking=no bandit0@bandit.labs.overthewire.org "cat readme"`

echo key is: \"$KEY\"

echo -n $KEY > bandit0.key
