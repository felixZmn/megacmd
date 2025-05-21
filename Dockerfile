FROM debian:bookworm
ARG MEGA_CMD_VERSION

RUN apt update && apt install -y \
    wget && \
    wget https://mega.nz/linux/repo/Debian_12/amd64/megacmd-Debian_12_amd64.deb && \
    apt install "$PWD/megacmd-Debian_12_amd64.deb" -y
