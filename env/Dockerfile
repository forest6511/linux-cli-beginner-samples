# 『エンジニアのためのLinux CLI入門』第2版の学習環境（Ubuntu 26.04 LTS）
# Mac の Docker Desktop で、Windows の WSL の Ubuntu と同じ操作感になるようにそろえている
#   - 一般ユーザー ubuntu で入る（WSL で最初に作るユーザーと同じ立場）
#   - sudo は sudo-rs（Ubuntu 26.04 の既定。WSL と同じ）。パスワードは README を参照
#   - 最小イメージで省かれている man ページを戻している
FROM ubuntu:26.04

# ビルドのときだけ質問を出さない（ENV にすると読者のシェルにも残り、WSL と変わる）
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

# 省かれている man ページなどを戻す
RUN apt-get update \
    && apt-get install -y --no-install-recommends unminimize \
    && yes | unminimize >/dev/null 2>&1 \
    ; rm -rf /var/lib/apt/lists/*

# 本で使うコマンドを入れる
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        sudo sudo-rs man-db manpages less nano vim-tiny tree file \
        curl wget ca-certificates iproute2 iputils-ping dnsutils \
        psmisc procps cron jq zip unzip bash-completion tzdata \
        command-not-found python3 whiptail
# apt の一覧は消さない（command-not-found の案内に使う。WSL で apt update した後と同じ状態）
RUN apt-get update

# ubuntu ユーザーにパスワードを付け、sudo のときに聞かれるようにする
RUN echo 'ubuntu:ubuntu' | chpasswd

USER ubuntu
WORKDIR /home/ubuntu
# WSL でログインしたときと同じ環境変数にそろえる（Docker では空になる）
# PATH は WSL の /etc/environment と同じ（Docker はログインのしくみを通らないので /etc/environment を読まない）。
# whiptail は、apt で入れるときの設定の画面に使う（無いと debconf の警告が何行も出る。WSL には入っている）
ENV USER=ubuntu \
    SHELL=/bin/bash \
    LANG=C.UTF-8 \
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
CMD ["bash", "-l"]
