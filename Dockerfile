FROM debian:stretch-20191014-slim

RUN apt update && apt install -y git openssh-client apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
  curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add --no-tty - && \
  apt update && apt install -y docker-ce && \
  rm -rf /var/lib/apt/lists/*

