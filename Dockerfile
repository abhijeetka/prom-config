#Prometheus Config Store Dockerfile
FROM alpine
MAINTAINER Ed Marshall (ed.marshall@infinityworks.com)

RUN mkdir -p /etc/prom-conf/

ADD prometheus.yml /etc/prom-conf/prometheus.yml
ADD alert.rules /etc/prom-conf/alert.rules

CMD ["/bin/sh"]
