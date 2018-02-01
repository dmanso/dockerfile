FROM debian:stretch
MAINTAINER David Manso <david.manso@epistolae.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y keepalived

RUN mkdir /config
RUN rmdir /etc/keepalived && ln -s /config /etc/keepalived

COPY entry.sh /
RUN chmod 755 /entry.sh
ENTRYPOINT ["/entry.sh", "--dont-fork", "--log-console"]
