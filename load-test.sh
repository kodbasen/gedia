#!/bin/bash

URL=${URL:-http://192.168.1.51:9090/api/v1/proxy/namespaces/default/services/gedia/}
INTERVAL=${INTERVAL:-5}

#while :; do curl http://192.168.1.51:9090/api/v1/proxy/namespaces/default/services/gedia/; echo " - $(date)"; ab -c 10 -n 1000 sleep 5; done

log() {
  timestamp=$(date +"[%m%d %H:%M:%S]")
  echo "+++ $timestamp $1"
  shift
  for message; do
    echo "    $message"
  done
}

log "Load testing url:$URL"
log "Abort pressing Ctrl-C"

while :; do
  log "" "$(curl -sS $URL)"
  log "" "$(ab -c 10 -n 1000 $URL)"
  sleep $INTERVAL
done
