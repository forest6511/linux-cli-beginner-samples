# エンジニアのためのLinux CLI入門 サンプル（第2版）

書籍『[エンジニアのためのLinux CLI入門　Mac/Windows対応・Docker・WSL2で学ぶLinux実践ハンズオン](https://www.amazon.co.jp/dp/B0GSSJHT2B)』（森川 陽介）の学習環境・練習用ファイル・本で作るスクリプトの完成形を置いています。

> このリポジトリは第2版（Ubuntu 26.04 LTS 対応）のためのものです。第1版（Ubuntu 24.04）の本をお持ちの方は、本の手順のまま進めてください。第1版にはサンプルのリポジトリはありません。

## 取り込み方

本の第1章の手順で、Ubuntu の中に取り込みます。

```bash
mkdir -p ~/linux-study
cd ~/linux-study
url=https://github.com/forest6511/linux-cli-beginner-samples
curl -sSLO "$url/releases/latest/download/samples.zip"
unzip -q samples.zip
ls samples
```

取り込んだ `samples.zip` が壊れていないかは、`sha256sum samples.zip` の値が、[リリースのページ](https://github.com/forest6511/linux-cli-beginner-samples/releases)の最新の版に書いてある SHA-256 と同じかで確かめます。

## 中身

- `practice/chNN/` … 各章の練習用ファイル。章の初めに `cp -r samples/practice/chNN .` で写して使います
- `ch11/`・`ch12/` … 第11章・第12章で作るスクリプトの完成形
- `env/` … Mac の Docker で使う学習環境（Ubuntu 26.04 LTS）。Windows の WSL の Ubuntu と同じ操作になるようにそろえています
- `tests/` … 学習環境に本のコマンドがそろっているか、スクリプトが紙面の幅に収まっているかを確かめるテスト

## 学習環境（Mac）

本の第1章の手順で作ります。

```bash
url=https://github.com/forest6511/linux-cli-beginner-samples
docker build -t linux-study "$url.git#main:env"
docker run -it --name study --hostname study linux-study
```

- ユーザー名: `ubuntu`
- `sudo` のパスワード: `ubuntu`（学習用です。この環境の外では使わないでください）

## 動作を確かめた環境

- Mac: Docker Desktop（Apple シリコン）＋ `ubuntu:26.04`。本の全章のコマンドと表示を、この環境で確かめています
- Windows: WSL の Ubuntu 26.04 LTS（確かめた範囲は本のはじめにを参照）

## ライセンス

コードは [MIT License](LICENSE) です。
