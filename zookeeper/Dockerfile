from piti118/cdh-bare

ARG id=1

RUN apt-get install -y zookeeper-server

RUN mkdir -p /var/lib/zookeeper
RUN chown -R zookeeper /var/lib/zookeeper/
COPY zoo.cfg /etc/zookeeper/conf/
EXPOSE 2888 3888 2181
RUN service zookeeper-server init

RUN echo ${id} > /var/lib/zookeeper/myid

CMD service zookeeper-server start && tail -F /var/log/zookeeper/zookeeper.log

