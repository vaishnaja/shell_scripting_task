#!/bin/bash

URL=https://www.guvi.in

STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

echo "HTTP Status Code: $STATUS_CODE"

if [ "$STATUS_CODE" -eq 200 ]; then
  echo "SUCCESS"
else
  echo "FAILURE"
fi
