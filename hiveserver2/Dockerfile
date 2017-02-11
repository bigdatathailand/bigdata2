FROM piti118/cdh-bare

RUN apt-get install -y libmysql-java hive hive-server2
#RUN ln -s /usr/share/java/libmysql-java.jar /usr/lib/hive/lib/libmysql-java.jar
# Cloudera got this wrong
RUN ln -s /usr/share/java/mysql-connector-java.jar /usr/lib/hive/lib/
COPY hive-site.xml /etc/hive/conf

CMD service hive-server2 start && tail -F /var/log/hive/hive*.log
