FROM irssi:alpine

LABEL maintainer "Mark Lopez <m@silvenga.com>"

USER root
RUN set -xe \
    && apk --no-cache add \
    bash \
    curl \
    perl-archive-zip \
    perl-digest-sha1 \
    perl-html-parser \
    perl-json \
    perl-net-ssleay \
    perl-xml-libxml \
    tmux \
    && chown -R user:user /home/user \
    && rm -rf /tmp/*

ADD rootfs/* /

USER user
WORKDIR /home/user
VOLUME /home/user/.autodl \
    /home/user/.irssi

CMD ["/bin/bash", "/start.sh"]
