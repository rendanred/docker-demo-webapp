FROM index.alauda.cn/library/golang:1.7
MAINTAINER rendanred <rendanred@foxmail.com>

RUN mkdir -p /web/static/
COPY WebAppCi /WebAppCi
COPY index.html /web/static/index.html

EXPOSE 3000

ENTRYPOINT ["/WebAppCi"]

