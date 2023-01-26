#!/bin/bash
# echo Starting server!
# npx http-server ./

export LOCAL_IP=`ipconfig getifaddr en0`

npx browser-sync start -s -f . --no-notify --host $LOCAL_IP --port 9000
