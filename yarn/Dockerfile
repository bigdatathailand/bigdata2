from piti118/cdh-bare

RUN apt-get install -y hadoop-yarn-resourcemanager hadoop-client hadoop-lzo

COPY conf /etc/hadoop/conf.bigdatathailand
RUN update-alternatives --install /etc/hadoop/conf hadoop-conf /etc/hadoop/conf.bigdatathailand 50
RUN update-alternatives --set hadoop-conf /etc/hadoop/conf.bigdatathailand

RUN mkdir -p /data/1/yarn/local /data/2/yarn/local /data/3/yarn/local /data/4/yarn/local
RUN mkdir -p /data/1/yarn/logs /data/2/yarn/logs /data/3/yarn/logs /data/4/yarn/logs
RUN chown -R yarn:yarn /data/1/yarn/local /data/2/yarn/local /data/3/yarn/local /data/4/yarn/local
RUN chown -R yarn:yarn /data/1/yarn/logs /data/2/yarn/logs /data/3/yarn/logs /data/4/yarn/logs

EXPOSE 8032 8088

CMD service hadoop-yarn-resourcemanager start && tail -F /var/log/hadoop-yarn/yarn*.log
