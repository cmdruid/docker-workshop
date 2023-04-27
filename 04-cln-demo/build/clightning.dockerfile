FROM debian:bullseye-slim AS build-stage

ARG BIN_NAME="clightning"

ENV BUILD_TARGET="x86_64-pc-linux-gnu"
ENV BUILD_BRANCH="v0.12.1"

ENV REPO_URL="https://github.com/ElementsProject/lightning.git"
ENV REPO_DIR="lightning"

ENV PATH="/root/.local/bin:$PATH"
ENV TAR_NAME="$BIN_NAME-$BUILD_BRANCH-$BUILD_TARGET"

## Prepare directories.
RUN mkdir -p /root/bin && mkdir -p /root/out

## Install dependencies.
RUN apt-get update && apt-get install -y \
  autoconf automake build-essential git libtool libgmp-dev libsqlite3-dev \
  pkg-config python3 python3-pip net-tools zlib1g-dev libsodium-dev gettext vim

RUN pip3 install --upgrade pip
RUN pip3 install poetry mako mrkd mistune==0.8.4

## Download source from remote repository.
RUN cd /root \
  && git clone $REPO_URL --branch $BUILD_BRANCH --single-branch

## Configure, compile and build binaries from source.
WORKDIR /root/$REPO_DIR

RUN poetry install
RUN ./configure --prefix=/root/bin/$TAR_NAME --enable-developer
RUN make && make install

## Prepare binary as tarball.
RUN tar -czvf /root/out/$TAR_NAME.tar.gz -C /root/bin $TAR_NAME

## Extract binary archive.
FROM scratch AS export-stage
COPY --from=build-stage /root/out /