#!/bin/sh

if [ `whoami` != 'root' ]; then
	sudo $0
	exit 0
fi

sudo -u daniel i3lock -c 000000
sleep 2
/etc/acpi/sleep.sh force

