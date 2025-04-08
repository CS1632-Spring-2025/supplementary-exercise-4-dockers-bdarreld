#!/bin/sh

set -e
  
until curl http://localhost:8080/; do  # linux utility curl is able to download a webpage from a url. returns 0 in successful download.
  >&2 echo "Web service is unavailable - sleeping"
  sleep 1
done
  
>&2 echo "Webservice is up - continuing"