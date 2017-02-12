FROM piti118/cdh-bare

RUN apt-get install -y libmysql-java hive hive-server2
#RUN ln -s /usr/share/java/libmysql-java.jar /usr/lib/hive/lib/libmysql-java.jar
# Cloudera got this wrong
RUN ln -s /usr/share/java/mysql-connector-java.jar /usr/lib/hive/lib/
COPY hive-site.xml /etc/hive/conf

COPY conf /etc/hadoop/conf.bigdatathailand
RUN update-alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.bigdatathailand 50
RUN update-alternatives --set hadoop-conf /etc/hadoop/conf.bigdatathailand

EXPOSE 10000

CMD wait-for-it.sh hivemetastore:9083 -t 60 -- service hive-server2 start; tail -F /var/log/hive/hive*.log
