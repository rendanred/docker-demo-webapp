FROM index.alauda.cn/library/golang:1.7

RUN mkdir -p /web/static/

COPY web.go /web/web.go
COPY index.html /web/static/index.html

EXPOSE 3000

ENTRYPOINT go run /web/web.go

