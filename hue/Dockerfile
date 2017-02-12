FROM piti118/cdh-bare

RUN apt-get install -y hue

COPY hue.ini /etc/hue/conf/
COPY hive-site.xml /etc/hive/conf/

EXPOSE 8888

CMD service hue start && tail -F /var/log/hue/access.log /var/log/hue/error.log
