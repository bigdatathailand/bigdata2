from mariadb:10

COPY oozie-initialize.sql /docker-entrypoint-initdb.d/
COPY amon-initialize.sql /docker-entrypoint-initdb.d/
COPY rman-initialize.sql /docker-entrypoint-initdb.d/
COPY hive-1-initialize.sql /docker-entrypoint-initdb.d/
#COPY hive-2-schema-1.1.0.mysql.sql /docker-entrypoint-initdb.d/
COPY sentry-initialize.sql /docker-entrypoint-initdb.d/
COPY nav-initialize.sql /docker-entrypoint-initdb.d/
COPY navms-initialize.sql /docker-entrypoint-initdb.d/
COPY hue-initialize.sql /docker-entrypoint-initdb.d/
