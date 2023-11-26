FROM alpine:latest

RUN apk --update add nginx openrc

COPY scripts/setup.sh /
COPY templates/default.conf /etc/nginx/http.d/default.conf
RUN mkdir -p /usr/share/nginx/html
COPY templates/index.html /usr/share/nginx/html/ 

EXPOSE 80/tcp
ENTRYPOINT ["/setup.sh"]
