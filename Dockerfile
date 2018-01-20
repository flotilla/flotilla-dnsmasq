FROM alpine:latest
MAINTAINER Craig Tracey <craigtracey@gmail.com>

COPY docker-entrypoint.sh /bin/docker-entrypoint.sh
RUN apk update && apk add dnsmasq syslinux inotify-tools
RUN ln -s /usr/share/syslinux /var/lib/tftproot

CMD ["/bin/docker-entrypoint.sh"]
