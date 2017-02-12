FROM piti118/cdh-bare

RUN apt-get install -y libmysql-java hive hive-metastore
#RUN ln -s /usr/share/java/libmysql-java.jar /usr/lib/hive/lib/libmysql-java.jar
RUN ln -s /usr/share/java/mysql-connector-java.jar /usr/lib/hive/lib/
COPY hive-site.xml /etc/hive/conf/

COPY conf /etc/hadoop/conf.bigdatathailand
RUN update-alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.bigdatathailand 50
RUN update-alternatives --set hadoop-conf /etc/hadoop/conf.bigdatathailand

EXPOSE 9083

COPY start-server.sh /usr/local/bin/

CMD start-server.sh
