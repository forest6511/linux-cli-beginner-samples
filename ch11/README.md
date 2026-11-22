# 第11章 はじめてのスクリプト（完成したスクリプト）

書籍『エンジニアのためのLinux CLI入門』（第2版）第11章で作るスクリプトの完成形です。[トップのページに戻る](../README.md)

本: [Kindle 版](https://www.amazon.co.jp/dp/B0GSSJHT2B)・[ペーパーバック](https://www.amazon.co.jp/dp/B0GSYM4YFW)

## このページの使い方

スクリプトは、本を見ながら自分で打って作ります。このページを開くのは、次のようなときです。

- **自分で作ったものが動かないとき** … 下の一覧でファイルの名前を押して、自分のファイルと見比べます
- **違う所を機械で探したいとき** … 第1章で取り込んだサンプルと `diff` で比べます（例: `diff hello.sh ~/linux-study/samples/ch11/hello.sh`）

## このフォルダーのファイル

- [`ask.sh`](ask.sh) … 名前を入力してもらい、あいさつする
- [`check.sh`](check.sh) … 引数の名前が、ファイルかディレクトリかを表示する
- [`greet.sh`](greet.sh) … 引数で受け取った名前にあいさつする
- [`hello.sh`](hello.sh) … はじめてのスクリプト。あいさつと、今いるディレクトリを表示する
- [`keep-top.sh`](keep-top.sh) … 引数のファイルを、先頭の3行だけにする
- [`number.sh`](number.sh) … ファイルを1行ずつ読み、行番号を付けて表示する

練習用のファイルは [practice/ch11](../practice/ch11) にあります。
