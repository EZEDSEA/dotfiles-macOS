#!/bin/bash
var=`pgrep unison | wc -c`
if [ $var -eq 0 ]; then
 while :
 do
      echo "Starting unison process... " `date`
      unison -ui text default.prf
      echo "Unison process exited.  Sleeping before restarting.  ^C to exit. " `date`
      sleep 30
 done
fi
