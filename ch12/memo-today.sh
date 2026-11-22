#!/bin/bash
# 演習 12-7 の答えの例: memo.sh の usage の前に足す「memo today」
# memo.sh に足す断片なので、cmd と memo_file は memo.sh の先頭で決まっている
# shellcheck disable=SC2154
# #region today
# memo today: 今日のメモだけを表示する
if [ "$cmd" = today ]; then
  grep "^$(date '+%Y-%m-%d')" "$memo_file"
  exit 0
fi
# #endregion
