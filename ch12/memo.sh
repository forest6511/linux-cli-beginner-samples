#!/bin/bash
# memo: 作業メモを記録・検索する（第12章）
# #region head
memo_file="$HOME/.memo.txt"
cmd="$1"
# #endregion

# #region add
# memo add 内容 分: 今日の日付を付けて、メモを1行足す
if [ "$cmd" = add ]; then
  if [ $# -ne 3 ]; then
    echo "使い方: memo add 内容 分" >&2
    exit 1
  fi
  today=$(date '+%Y-%m-%d')
  printf '%s\t%s\t%s\n' "$today" "$2" "$3" >>"$memo_file"
  echo "記録しました: $2（$3分）"
  exit 0
fi
# #endregion

# #region list
# memo list: すべてのメモを表示する
if [ "$cmd" = list ]; then
  cat "$memo_file"
  exit 0
fi
# #endregion

# #region search
# memo search 言葉: 言葉を含むメモを表示する（日付でも探せる）
if [ "$cmd" = search ]; then
  if [ $# -ne 2 ]; then
    echo "使い方: memo search 言葉" >&2
    exit 1
  fi
  grep "$2" "$memo_file"
  exit 0
fi
# #endregion

# #region count
# memo count: 日ごとのメモの件数を数える
if [ "$cmd" = count ]; then
  cut -f 1 "$memo_file" | sort | uniq -c
  exit 0
fi
# #endregion

# #region sum
# memo sum [日付]: 作業時間（分）を合計する。日付を省くと全部
if [ "$cmd" = sum ]; then
  grep "^$2" "$memo_file" | awk -F '\t' '{s += $3} END {print s + 0}'
  exit 0
fi
# #endregion

# #region usage
# どれにも当てはまらないときは、使い方を出して終わる
echo "使い方: memo add 内容 分 | list | search 言葉 | count | sum [日付]" >&2
exit 1
# #endregion
