#!/bin/bash
# ファイルを1行ずつ読み、行番号を付けて表示する
n=0
while IFS= read -r line; do
  n=$((n + 1))
  echo "${n}: ${line}"
done <"$1"
