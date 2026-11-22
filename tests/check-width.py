#!/usr/bin/env python3
"""本に載せるファイル（ch*/ と practice/）の1行の幅を確かめる（紙面の実測: 69 桁まで、全角は 1.5 桁と数える）。"""
import subprocess
import sys
import unicodedata

LIMIT = 69
files = subprocess.run(["git", "ls-files", "ch*/*", "practice/*"], capture_output=True, text=True).stdout.split()
bad = 0
for f in sorted(set(files)):
    try:
        text = open(f, encoding="utf-8").read()
    except UnicodeDecodeError:
        continue
    for n, line in enumerate(text.split("\n"), 1):
        w = sum(1.5 if unicodedata.east_asian_width(c) in "WF" else 1 for c in line.expandtabs(8))
        if w > LIMIT:
            print(f"NG {f}:{n} 幅 {w}: {line}")
            bad += 1
print(f"{bad} 行が {LIMIT} 桁を超えている" if bad else f"ok すべての行が {LIMIT} 桁以内")
sys.exit(1 if bad else 0)
