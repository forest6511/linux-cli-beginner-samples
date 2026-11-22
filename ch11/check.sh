#!/bin/bash
# 引数の名前が、ファイルかディレクトリかを表示する
if [ $# -ne 1 ]; then
  echo "使い方: ./check.sh 名前" >&2
  exit 1
fi
if [ ! -e "$1" ]; then
  echo "$1 は見つかりません" >&2
  exit 1
fi
if [ -f "$1" ]; then
  echo "$1 はファイルです"
elif [ -d "$1" ]; then
  echo "$1 はディレクトリです"
else
  echo "$1 はファイルでもディレクトリでもありません"
fi
