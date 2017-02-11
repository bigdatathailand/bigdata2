FROM piti118/cdh-bare

RUN apt-get install -y libmysql-java hive hive-metastore
#RUN ln -s /usr/share/java/libmysql-java.jar /usr/lib/hive/lib/libmysql-java.jar
RUN ln -s /usr/share/java/mysql-connector-java.jar /usr/lib/hive/lib/
COPY hive-site.xml /etc/hive/conf/

EXPOSE 9083

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD (service hive-metastore start && tail -F /var/log/hive/*.log) || tail -f /dev/null
