#!/usr/bin/env bash
# 学習環境のイメージを作り、check-env.sh を中で動かす（手元と CI で同じものを使う）
set -euo pipefail
cd "$(dirname "$0")/.."
docker build -t linux-study env
docker run --rm --hostname study -v "$PWD/tests:/tests:ro" linux-study bash /tests/check-env.sh /tests/commands.txt
