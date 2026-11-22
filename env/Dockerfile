# 『エンジニアのためのLinux CLI入門』第2版の学習環境（Ubuntu 26.04 LTS）
# Mac の Docker Desktop で、Windows の WSL の Ubuntu と同じ操作感になるようにそろえている
#   - 一般ユーザー ubuntu で入る（WSL で最初に作るユーザーと同じ立場）
#   - sudo は sudo-rs（Ubuntu 26.04 の既定。WSL と同じ）。パスワードは README を参照
#   - 最小イメージで省かれている man ページを戻している
FROM ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Tokyo

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
    && rm -rf /var/lib/apt/lists/*

# ubuntu ユーザーにパスワードを付け、sudo のときに聞かれるようにする
RUN echo 'ubuntu:ubuntu' | chpasswd

USER ubuntu
WORKDIR /home/ubuntu
CMD ["bash", "-l"]
