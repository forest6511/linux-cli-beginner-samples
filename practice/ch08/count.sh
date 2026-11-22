#!/bin/bash
# 1秒ごとに数を表示する（第8章の nohup の練習用）
for i in 1 2 3; do
  echo "$i 回目"
  sleep 1
done
echo 終わりました
