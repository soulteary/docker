FROM alpine:3.4

MAINTAINER soulteary <soulteary@gmail.com>

RUN echo '' > /etc/apk/repositories && \
    echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/main"         >> /etc/apk/repositories && \
    echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.4/community"    >> /etc/apk/repositories && \
    echo "166.111.206.63    mirror.tuna.tsinghua.edu.cn"                >> /etc/hosts && \
    echo "185.31.17.249     github.com"                                 >> /etc/hosts && \
    echo "Asia/Shanghai" > /etc/timezone

RUN apk --no-cache --no-progress update && \
    apk --no-cache --no-progress upgrade && \
    rm -rf /var/cache/apk/*

CMD ["/bin/sh"]