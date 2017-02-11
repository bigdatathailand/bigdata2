FROM piti118/cdh-bare

RUN apt-get install -y hbase-regionserver

COPY hbase-site.xml /etc/hbase/conf/

EXPOSE 60020 60030

CMD service hbase-regionserver start && tail -F /var/log/hbase/*.log
