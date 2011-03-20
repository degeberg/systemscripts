#!/bin/sh

if [ `whoami` != 'root' ]; then
	sudo $0
	exit 0
fi

if [ -f /usr/bin/firefox-sync ]; then
    firefox-sync
fi

sudo -u daniel i3lock -c 000000
sleep 1
pm-suspend

