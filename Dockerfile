ARG DEBIAN_VERSION=bookworm

FROM debian:$DEBIAN_VERSION
ENV USERNAME="normal"
ENV HOME="/home/$USERNAME"
ENV VENV="$HOME/.venv"
ENV PATH="$VENV/bin:$PATH"

RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends python3 && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m --shell /bin/bash -u 1000 $USERNAME
