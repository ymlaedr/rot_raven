FROM alpine:3.9
MAINTAINER YoshimuraMakoto<ymlaedr@gmail.com>

ARG LOGIN_EMAIL
ARG LOGIN_PASSWORD

RUN apk \
 add \
 --update \
 --no-cache \
    bash \
    curl \
    git \
    python3
RUN pip3 install --upgrade pip
RUN pip3 install gigalixir --ignore-installed six
RUN echo "PS1=\"\[\e[1;32m\]gigalixir_client\[\e[m\]$ \"" >> ~/.bashrc
ENTRYPOINT [ "/bin/bash", "-c", "gigalixir login -e ${LOGIN_EMAIL} -p ${LOGIN_PASSWORD} -y && /bin/bash", "--" ]
