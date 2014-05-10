#!/bin/bash

. bandit.sh 12
execute "ls -l"
execute "rm -rf /tmp/unpack && mkdir /tmp/unpack \
		&& cp data.txt /tmp/unpack \
		&& cd /tmp/unpack \
		&& xxd -r data.txt > v1 \
		&& zcat v1 > v2 \
		&& bzcat v2 > v3 \
		&& zcat v3 > v4 \
		&& tar -xOf v4 > v5 \
		&& tar -xOf v5 > v6 \
		&& bzcat v6 > v7 \
		&& tar -xOf v7 > v8 \
		&& zcat v8 > v9 \
		&& cat v9"
submit "cat /tmp/unpack/v9 | awk '{ print \$NF }'"
