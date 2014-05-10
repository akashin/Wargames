#!/bin/bash

. bandit.sh 22
execute "ls -l /etc/cron.d"
execute "cat /etc/cron.d/cronjob_bandit23"
execute "cat /usr/bin/cronjob_bandit23.sh"
submit "cat /tmp/`echo I am user bandit23 | md5sum | cut -d ' ' -f 1`"
