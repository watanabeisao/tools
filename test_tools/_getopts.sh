#!/bin/bash

SLEEP_INTERVAL=1
MEMORY_SIZE_MB=1024

while getopts i:s: OPT
do
  case $OPT in
    "i" ) SLEEP_INTERVAL="$OPTARG" ;;
    "s" ) MEMORY_SIZE_MB="$OPTARG" ;;
      * ) echo "Usage: $CMDNAME [-i interval_sleep_time] [-s memory_size]" 1>&2
          exit 1 ;;
  esac
done
