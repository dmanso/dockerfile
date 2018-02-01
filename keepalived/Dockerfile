FROM debian:stretch
MAINTAINER David Manso <david.manso@epistolae.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y keepalived

RUN mkdir /config
RUN rmdir /etc/keepalived && ln -s /config /etc/keepalived

ENTRYPOINT ["/usr/sbin/keepalived", "--dont-fork", "--log-console"]
