# エンジニアのためのLinux CLI入門 サンプル（第2版）

書籍『[エンジニアのためのLinux CLI入門　Mac/Windows対応・Docker・WSL2で学ぶLinux実践ハンズオン](https://www.amazon.co.jp/dp/B0GSSJHT2B)』（森川 陽介）の学習環境・練習用ファイル・本で作るスクリプトの完成形を置いています。

本: [Kindle 版](https://www.amazon.co.jp/dp/B0GSSJHT2B)・[ペーパーバック](https://www.amazon.co.jp/dp/B0GSYM4YFW)

> このリポジトリは第2版（Ubuntu 26.04 LTS 対応）のためのものです。第1版（Ubuntu 24.04）の本をお持ちの方は、本の手順のまま進めてください。第1版にはサンプルのリポジトリはありません。

## 取り込み方

本の第1章の手順で、Ubuntu の中に取り込みます。**先に学習環境（Ubuntu）を用意し、その中で打ちます。** Mac の人は[学習環境の作り方](env)（Docker Desktop を入れるところから）、Windows の人は本の第1章の手順で WSL に Ubuntu 26.04 を入れます。行の頭が `ubuntu@study:~$` のように `$` で終わる形（Windows では `自分のユーザー名@コンピューター名:~$` のような形。`:` の後ろは今いる場所で、`~` 以外になることもあります）になってから、次を打ちます。

```bash
mkdir -p ~/linux-study
cd ~/linux-study
url=https://github.com/forest6511/linux-cli-beginner-samples
curl -sSLO "$url/releases/latest/download/samples.zip"
unzip -q samples.zip
ls samples
```

取り込んだ `samples.zip` が壊れていないかは、`sha256sum samples.zip` の値が、[リリースのページ](https://github.com/forest6511/linux-cli-beginner-samples/releases)の最新の版に書いてある SHA-256 と同じかで確かめます。

## 章ごとのページ

各章の練習用のファイルは、第1章で取り込んだ `~/linux-study/samples/practice/chNN` にあります。下のリンクから、ブラウザーで中身と説明を見られます。

- 第1章 学習環境を用意する … Mac の人は[学習環境の作り方](env)（Windows の人は WSL を使うので不要）。このサンプルの取り込み方は上の「取り込み方」
- 第2章 ターミナルとシェルの基本 … [練習用のファイル](practice/ch02)
- 第3章 ファイルとディレクトリ … [練習用のファイル](practice/ch03)
- 第4章 ファイルの中身を見る・探す・まとめる … [練習用のファイル](practice/ch04)
- 第5章 リダイレクトとパイプ … [練習用のファイル](practice/ch05)
- 第6章 テキストを加工する … [練習用のファイル](practice/ch06)
- 第7章 ユーザーと権限 … [練習用のファイル](practice/ch07)
- 第8章 プロセスとジョブ … [練習用のファイル](practice/ch08)
- 第9章 ツールを入れる・ネットワークを見る … [練習用のファイル](practice/ch09)
- 第10章 シェルの設定 … [練習用のファイル](practice/ch10)
- 第11章 はじめてのスクリプト … [練習用のファイル](practice/ch11)・[完成したスクリプト](ch11)
- 第12章 総合ハンズオン 作業メモのコマンドを作る … [練習用のファイル](practice/ch12)・[完成したスクリプト](ch12)

## 学習環境（Mac）

本の第1章の手順で作ります。先に Docker Desktop を入れ、Mac の「ターミナル」で打ちます。Docker Desktop の入れ方から順に、[学習環境の作り方](env)のページにまとめています。

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

## このリポジトリの中の、本を作るためのもの

- `tests/` … 学習環境に本のコマンドがそろっているか、本に載せるファイルが紙面の幅に収まっているかを確かめるテスト（読者が使うものではありません）

## ライセンス

コードは [MIT License](LICENSE) です。
