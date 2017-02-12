#!/bin/bash
wait-for-it.sh mariadb:3306 -t 60 && \
( /usr/lib/hive/bin/schematool -info -dbType mysql || /usr/lib/hive/bin/schematool -dbType mysql -initSchema ) && \
service hive-metastore start && \
tail -F /var/log/hive/*.log
