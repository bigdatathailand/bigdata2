from piti118/cdh-bare

RUN apt-get install -y hadoop-yarn-nodemanager hadoop-hdfs-datanode hadoop-mapreduce hadoop-client hadoop-mapreduce-historyserver hadoop-yarn-proxyserver hadoop-lzo

COPY conf /etc/hadoop/conf.bigdatathailand
RUN update-alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.bigdatathailand 50
RUN update-alternatives --set hadoop-conf /etc/hadoop/conf.bigdatathailand

EXPOSE 10020 19888

CMD service hadoop-mapreduce-historyserver start && tail -F /var/log/hadoop-mapreduce/mapred*.log
