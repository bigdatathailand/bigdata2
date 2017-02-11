#!/bin/bash
/usr/lib/hive/bin/schematool -info -dbType mysql || /usr/lib/hive/bin/schematool -dbType mysql -initSchema
exec "$@"
