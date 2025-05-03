#!/bin/bash
echo Starting browser-sync!
export LOCAL_IP=$(ipconfig getifaddr en0)
npx browser-sync start -s -f . --no-notify --host $LOCAL_IP --port 9000
