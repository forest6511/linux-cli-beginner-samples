#!/bin/bash
# 引数のファイルを、先頭の3行だけにする
if [ $# -ne 1 ] || [ ! -f "$1" ]; then
  echo "使い方: ./keep-top.sh ファイル名" >&2
  exit 1
fi
# 読んでいるファイルに直接 > で書くと空になる（第5章）ので、
# 一時ファイルに書いてから mv で置き換える
tmp=$(mktemp)
head -n 3 "$1" >"$tmp"
chmod --reference="$1" "$tmp"
mv "$tmp" "$1"
