from piti118/cdh-bare

RUN apt-get install -y hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce hadoop-client hadoop-lzo

COPY conf /etc/hadoop/conf.bigdatathailand
RUN update-alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.bigdatathailand 50
RUN update-alternatives --set hadoop-conf /etc/hadoop/conf.bigdatathailand

RUN mkdir -p /data/1/dfs/dn /data/2/dfs/dn /data/3/dfs/dn /data/4/dfs/dn
RUN chown -R hdfs:hdfs /data/1/dfs/dn /data/2/dfs/dn /data/3/dfs/dn /data/4/dfs/dn
RUN chmod -R 700 /data/1/dfs/dn /data/2/dfs/dn /data/3/dfs/dn /data/4/dfs/dn

RUN mkdir -p /data/1/yarn/local /data/2/yarn/local /data/3/yarn/local /data/4/yarn/local
RUN mkdir -p /data/1/yarn/logs /data/2/yarn/logs /data/3/yarn/logs /data/4/yarn/logs
RUN chown -R yarn:yarn /data/1/yarn/local /data/2/yarn/local /data/3/yarn/local /data/4/yarn/local
RUN chown -R yarn:yarn /data/1/yarn/logs /data/2/yarn/logs /data/3/yarn/logs /data/4/yarn/logs

CMD service hadoop-hdfs-datanode start && \
    service hadoop-yarn-nodemanager start && \
    tail -F /var/log/hadoop-hdfs/hadoop*.log
