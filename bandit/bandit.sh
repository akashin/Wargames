#!/bin/bash

TASK_NUMBER=$1

PREVIOUS_TASK="bandit"$((TASK_NUMBER-1))
TASK="bandit"$((TASK_NUMBER))
if [ $TASK_NUMBER -ne 0 ]
then
	PASS=`cat keys/${PREVIOUS_TASK}.key`
else
	PASS='bandit0'
fi

function execute()
{
	COMMAND=$1
	sshpass -p $PASS ssh -o StrictHostKeyChecking=no $TASK@bandit.labs.overthewire.org $COMMAND
}

function submit()
{
	KEY=$1
	echo key is: \"$KEY\"
	echo -n $KEY > keys/$TASK.key
}