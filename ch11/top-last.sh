#!/bin/bash
# 一時ファイルに先頭3行を置き、その最後の行を表示して、一時ファイルを消す
tmp=$(mktemp)
head -n 3 "$1" >"$tmp"
tail -n 1 "$tmp"
rm "$tmp"
