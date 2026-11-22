# 学習環境の作り方（Mac の人向け）

書籍『エンジニアのためのLinux CLI入門』（第2版）の第1章で、**Mac の人**が使う学習環境の作り方です。[トップのページに戻る](../README.md)

本: [Kindle 版](https://www.amazon.co.jp/dp/B0GSSJHT2B)・[ペーパーバック](https://www.amazon.co.jp/dp/B0GSYM4YFW)

**Windows の人は、このフォルダーを使いません。** 第1章の手順で、WSL に Ubuntu 26.04 を入れます。

## このフォルダーは何か

[`Dockerfile`](Dockerfile) は、Docker Desktop で学習環境（Ubuntu 26.04 LTS に、この本で使うコマンドを入れたもの）を作るための設計図です。中身を読んだり、ダウンロードしたりする必要はありません。

## 使い方

本の第1章「学習環境を作る」の手順どおり、Mac のターミナルで次のコマンドを打ちます。このフォルダーの `Dockerfile` を GitHub から直接読んで、学習環境を作ります（数分かかります）。

```bash
url=https://github.com/forest6511/linux-cli-beginner-samples
docker build -t linux-study "$url.git#main:env"
```

でき上がったら、次のコマンドで学習環境に入ります。プロンプトが `ubuntu@study:~$` に変われば、Ubuntu の中です。

```bash
docker run -it --name study --hostname study linux-study
```

- ユーザー名: `ubuntu`
- `sudo` のパスワード: `ubuntu`（学習用です。この環境の外では使わないでください）

抜けるときは `exit`、入り直すときは `docker start -ai study` です。詳しくは本の第1章を見てください。

## 学習環境に入っているもの

- Ubuntu 26.04 LTS（Windows の WSL の Ubuntu と同じ操作になるように、ユーザー・`sudo`・環境変数をそろえています）
- この本で使うコマンド（`man`・`less`・`nano`・`tree`・`curl`・`jq`・`dig`・`gawk` など）
- 省かれている説明書（`man` のページ）
