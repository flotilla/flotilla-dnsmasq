#!/bin/sh

dnsmasq -k --log-facility=- &
while inotifywait -e close_write --timefmt '%H:%M' --format '%T %w %e %f' -r /etc/dnsmasq.d; do
	PID=$(cat /var/run/dnsmasq.pid)
	kill -1 ${PID}
done
