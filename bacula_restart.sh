#!/usr/bin/env bash

if [ "$1" = "-shark" ]
then
	echo "It's freaking sharks with lazers attached to their heads!"
fi

/etc/init.d/bacula-director restart
/etc/init.d/bacula-fd restart
/etc/init.d/bacula-sd restart

