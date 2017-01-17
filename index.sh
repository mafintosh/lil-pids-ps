#!/bin/bash

EMPTY=true
PIDS_FILE="$1"
[ "$PIDS_FILE" == "" ] && PIDS_FILE="pids"

if [ ! -f "$PIDS_FILE" ]; then
  echo "$PIDS_FILE does not exist. Pass a path to the ./pids file"
  exit 1
fi

cmd="ps -o pid,ppid,etime,%mem,%cpu,args"
for pid in $(cut -c1-5 < "$PIDS_FILE"); do
  EMPTY=false
  cmd="$cmd -p $pid"
  for ppid in $(pgrep -P $pid); do
    cmd="$cmd -p $ppid"
  done
done

($EMPTY && $cmd | head -n 1) || $cmd
