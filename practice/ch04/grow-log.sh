#!/bin/bash
# 1秒ごとに、時刻つきの行を log.txt の後ろに足す（Ctrl+C で止める）
while true; do
  echo "$(date '+%H:%M:%S') 作業中" >>log.txt
  sleep 1
done
