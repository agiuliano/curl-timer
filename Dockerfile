FROM alpine:edge

RUN apk upgrade -U -a
RUN apk add --update bash curl openssl && rm -rf /var/cache/apk/*

COPY timer.sh /timer.sh
RUN chmod +x /timer.sh

CMD ["/bin/bash", "/timer.sh"]
