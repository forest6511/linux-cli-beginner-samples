# 学習環境の作り方（Mac の人向け）

書籍『エンジニアのためのLinux CLI入門』（第2版）の第1章で、**Mac の人**が使う学習環境の作り方です。[トップのページに戻る](../README.md)

本: [Kindle 版](https://www.amazon.co.jp/dp/B0GSSJHT2B)・[ペーパーバック](https://www.amazon.co.jp/dp/B0GSYM4YFW)

**Windows の人は、このフォルダーを使いません。** 第1章の手順で、WSL に Ubuntu 26.04 を入れます。

## このフォルダーは何か

[`Dockerfile`](Dockerfile) は、学習環境（Ubuntu 26.04 LTS に、この本で使うコマンドを入れたもの）を作るための手順書です。中身を読んだり、ダウンロードしたりする必要はありません。下の手順のコマンドが、GitHub からこのファイルを直接読みます。

## 始める前に: Docker Desktop を入れる

学習環境は **Docker Desktop**（Mac の中で、Linux を小さな箱として動かすアプリ）の上で動きます。まだ入れていない場合は、先に入れます。

1. Docker の公式サイト（https://www.docker.com/）の「Download Docker Desktop」から、Mac 用のものを選ぶ。Apple シリコン（M1 以降）の Mac は「Apple Silicon」、それより前の Mac は「Intel Chip」
2. ダウンロードした `.dmg` を開き、Docker のアイコンを「アプリケーション」に移す
3. 「アプリケーション」から Docker を起動し、利用条件に同意する。アカウントの作成は求められても飛ばせる

Docker Desktop は、個人の学習や小さな会社では無料で使えます。大きな会社で仕事として使う場合は有料のプランが要るので、公式サイトの条件を確かめてください。

## コマンドを打つ場所: Mac のターミナル

この後のコマンドは、Mac の「アプリケーション」→「ユーティリティ」の「ターミナル」を開いて打ちます。Mac のターミナルでは、行の頭に `%` が出ています（打つのは `%` の後ろの部分です）。

まず、`docker` コマンドが入ったかを確かめます。

```console
% docker --version
Docker version 29.3.1, build c2be9ccfc3
```

版の番号が表示されれば、`docker` コマンドが入っています（番号は違っていて構いません）。`command not found` と表示されたときは、Docker Desktop を一度起動します。

この確かめ方では、Docker Desktop が動いているかまでは分かりません。動いていないと、次の `docker build` が `Cannot connect to the Docker daemon` などのエラーになります。そのときは、Docker Desktop を起動し、起動が終わるまで少し待ってから打ち直します。

## 学習環境を作る・入る

次の2行を1行ずつ打つと、学習環境ができます（数分かかります）。エラーが出ずに `%` に戻れば、でき上がりです。

```console
% url=https://github.com/forest6511/linux-cli-beginner-samples
% docker build -t linux-study "$url.git#main:env"
```

でき上がったら、次のコマンドで学習環境に入ります。行の頭が `ubuntu@study:~$` に変われば、Ubuntu の中です。

```console
% docker run -it --name study --hostname study linux-study
ubuntu@study:~$
```

- ユーザー名: `ubuntu`
- `sudo` のパスワード: `ubuntu`（学習用です。この環境の外では使わないでください）

抜けるときは `exit`、次からは `docker start -ai study` で入り直します（`docker run` をもう一度打つと、同じ名前がすでにあるというエラーになります）。この後の、サンプルの取り込みなどは本の第1章を見てください。

## 学習環境に入っているもの

- Ubuntu 26.04 LTS（Windows の WSL の Ubuntu と同じ操作になるように、ユーザー・`sudo`・環境変数をそろえています）
- この本で使うコマンド（`man`・`less`・`nano`・`tree`・`curl`・`jq`・`dig`・`gawk` など）
- 省かれている説明書（`man` のページ）
