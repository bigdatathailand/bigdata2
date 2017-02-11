from piti118/cdh-bare

RUN apt-get install -y hbase-master
COPY hbase-site.xml /etc/hbase/conf/

EXPOSE 60000 60010

CMD service hbase-master start && tail -F /var/log/hbase/*.log
