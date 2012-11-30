#!/usr/bin/env bash

while getopts ":a" opt; do
  case $opt in
    a)
      echo "It is freaking sharks with lazers attached to their heads!" >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

/etc/init.d/bacula-director restart
/etc/init.d/bacula-fd restart
/etc/init.d/bacula-sd restart

