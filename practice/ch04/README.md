# 第4章 ファイルの中身を見る・探す・まとめる（練習用のファイル）

書籍『エンジニアのためのLinux CLI入門』（第2版）第4章の練習用のファイルです。[トップのページに戻る](../../README.md)

本: [Kindle 版](https://www.amazon.co.jp/dp/B0GSSJHT2B)・[ペーパーバック](https://www.amazon.co.jp/dp/B0GSYM4YFW)

## この章で学ぶこと

- ファイルの中身を表示する（`cat`・`nl`・`less`）、先頭と末尾だけを見る（`head`・`tail`）
- 行数や文字数を数える（`wc`）
- 2つのファイルを比べる（`diff`・`cmp`）
- ファイルを探す（`find`）、日時を変える（`touch -d`）
- 使っている量を見る（`du`・`df`）
- ファイルをまとめる・縮める・開く（`tar`・`gzip`・`gunzip`・`zip`・`unzip`）

## このフォルダーの使い方

第1章で、サンプル全体を Ubuntu の中の `~/linux-study/samples` に取り込んであります。章の初めに、そこからこのフォルダーを写して使います（GitHub からダウンロードする必要はありません）。

```bash
cd ~/linux-study
cp -r samples/practice/ch04 .
cd ch04
```

このページを開くのは、次のようなときです。

- **ファイルの中身を確かめたいとき** … 下の一覧でファイルの名前を押すと、中身が表示されます
- **章を最初からやり直したいとき** … 本の章の初めにある、やり直すときの手順に従います。章によっては、フォルダーを写し直すほかに、変えた設定を元に戻す手順があります（第10章の `.bashrc`、第11章の定期実行など）

## このフォルダーのファイル

- 使うファイル
  - [`memo.txt`](memo.txt): 4行のメモ（3行目は空の行）
  - [`lines.txt`](lines.txt): 「1行目のテキスト」から「20行目のテキスト」までの20行
  - [`long.txt`](long.txt): `less` の練習に使う100行のファイル
  - [`config-old.txt`](config-old.txt) と [`config-new.txt`](config-new.txt): 中身を少し変えた、設定ファイルの新旧
  - [`project`](project): 第3章と同じ、小さなプロジェクトのつもりの木
  - [`grow-log.sh`](grow-log.sh): `tail -f` の練習に使う小さなスクリプト
- この章で作るファイル: `log.txt`（[`grow-log.sh`](grow-log.sh) が作る）・`docs.tar.gz`・`docs.zip`・`unpack`・`out` など

このページ（README.md）は説明のためのもので、取り込んだサンプルには入りません。
