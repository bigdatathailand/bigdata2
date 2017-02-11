from piti118/cdh-bare

RUN apt-get install -y hadoop-hdfs-namenode hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce hadoop-client hadoop-lzo

COPY conf /etc/hadoop/conf.bigdatathailand
RUN update-alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.bigdatathailand 50
RUN update-alternatives --set hadoop-conf /etc/hadoop/conf.bigdatathailand

RUN mkdir -p /data/1/dfs/nn
#Do not switch these two lines
RUN chown -R hdfs:hdfs /data/1/dfs/nn
RUN chmod 700 /data/1/dfs/nn

RUN mkdir -p /data/1/yarn/local /data/2/yarn/local /data/3/yarn/local /data/4/yarn/local
RUN mkdir -p /data/1/yarn/logs /data/2/yarn/logs /data/3/yarn/logs /data/4/yarn/logs
RUN chown -R yarn:yarn /data/1/yarn/local /data/2/yarn/local /data/3/yarn/local /data/4/yarn/local
RUN chown -R yarn:yarn /data/1/yarn/logs /data/2/yarn/logs /data/3/yarn/logs /data/4/yarn/logs

# format data dir
RUN su hdfs -c "hdfs namenode -format"

EXPOSE 50070 8020

# make tmp dir
RUN echo "127.0.0.1    namenode" >> /etc/hosts && \
    service hadoop-hdfs-namenode start && \
    service hadoop-hdfs-datanode start && \
    su hdfs -c "hadoop fs -mkdir /tmp" && \
    su hdfs -c "hadoop fs -chmod -R 1777 /tmp" && \
    su hdfs -c "hadoop fs -mkdir -p /user/history" && \
    su hdfs -c "hadoop fs -chmod -R 1777 /user/history" && \
    su hdfs -c "hadoop fs -chown mapred:hadoop /user/history" && \
    su hdfs -c "hadoop fs -mkdir /hbase" && \
    su hdfs -c "hadoop fs -chown hbase /hbase" && \
    su hdfs -c "hadoop fs -mkdir -p /user/hive/warehouse" && \
    su hdfs -c "hadoop fs -chown hive /user/hive" && \
    su hdfs -c "hadoop fs -chmod -R 1777 /user/hive/warehouse"

CMD service hadoop-hdfs-namenode start && \
    service hadoop-hdfs-datanode start && \
    service hadoop-yarn-nodemanager start && \
    tail -F /var/log/hadoop-hdfs/hadoop*.log
