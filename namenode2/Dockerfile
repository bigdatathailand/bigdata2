from piti118/cdh-bare

RUN apt-get install -y hadoop-hdfs-secondarynamenode hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce hadoop-client hadoop-lzo

COPY conf /etc/hadoop/conf.bigdatathailand
RUN update-alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.bigdatathailand 50
RUN update-alternatives --set hadoop-conf /etc/hadoop/conf.bigdatathailand

CMD service hadoop-hdfs-secondarynamenode start && tail -f /var/log/hadoop-hdfs/hadoop-hdfs-secondarynamenode-*.log
