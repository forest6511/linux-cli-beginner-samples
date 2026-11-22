#!/usr/bin/env bash
# 学習環境の中で動かし、本の前提がそろっているかを確かめる
set -u
fail=0

# check 説明 期待する値 実際の値
check() {
  if [ "$2" = "$3" ]; then
    printf 'ok   %s\n' "$1"
  else
    printf 'NG   %s（期待: %s／実際: %s）\n' "$1" "$2" "$3"
    fail=1
  fi
}

# 1. ユーザーとホーム
check "ユーザー" ubuntu "$(id -un)"
check "ホーム" /home/ubuntu "$HOME"

# 2. Ubuntu の版
# shellcheck source=/dev/null
. /etc/os-release
check "Ubuntu の版" 26.04 "$VERSION_ID"

# 3. sudo は sudo-rs で、パスワードで通る
check "sudo の実体" /usr/lib/cargo/bin/sudo "$(readlink -f "$(command -v sudo)")"
check "パスワードで sudo" root "$(echo ubuntu | sudo -S -k whoami 2>/dev/null)"

# 4. man ページが読める（最小イメージのままだと説明文が出ない）
if man ls 2>/dev/null | grep -q 'NAME'; then man_ok=yes; else man_ok=no; fi
check "man ls が読める" yes "$man_ok"

# 5. 本で扱うコマンドがすべて使える
missing=0
while read -r chapter name; do
  case "$chapter" in '#'* | '') continue ;; esac
  if ! type "$name" >/dev/null 2>&1; then
    printf 'NG   コマンド %s（%s）が無い\n' "$name" "$chapter"
    missing=$((missing + 1))
    fail=1
  fi
done <"${1:-/tests/commands.txt}"
check "本のコマンドがそろっている（足りない数）" 0 "$missing"

exit "$fail"
