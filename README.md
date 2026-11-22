# エンジニアのためのLinux CLI入門 サンプル（第2版）

書籍『[エンジニアのためのLinux CLI入門　Mac/Windows対応・Docker・WSL2で学ぶLinux実践ハンズオン](https://www.amazon.co.jp/dp/B0GSSJHT2B)』（森川 陽介）の学習環境・練習用ファイル・演習の答えを置いています。

> このリポジトリは第2版（Ubuntu 26.04 LTS 対応）のためのものです。第1版（Ubuntu 24.04）の本をお持ちの方は、本の手順のまま進めてください。第1版にはサンプルのリポジトリはありません。

## 中身

- `env/` … Mac の Docker で使う学習環境（Ubuntu 26.04 LTS）。Windows の WSL の Ubuntu と同じ操作になるようにそろえています
- `tests/` … 学習環境に本のコマンドがそろっているかを確かめるテスト

練習用ファイルと演習の答えは、本の章に合わせて追加していきます。

## 学習環境の使い方（Mac）

本の第1章の手順で進めてください。ここでは要点だけ書きます。

- ユーザー名: `ubuntu`
- `sudo` のパスワード: `ubuntu`（学習用です。この環境の外では使わないでください）

## 動作を確かめた環境

- Mac: Docker Desktop（Apple シリコン）＋ `ubuntu:26.04`
- Windows: WSL の Ubuntu 26.04 LTS（本の第1章を参照）

## ライセンス

コードは [MIT License](LICENSE) です。
