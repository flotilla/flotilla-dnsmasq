FROM alpine:latest
MAINTAINER Craig Tracey <craigtracey@gmail.com>

COPY docker-entrypoint.sh /bin/docker-entrypoint.sh
RUN apk update && apk add dnsmasq syslinux inotify-tools

CMD ["/bin/docker-entrypoint.sh"]
