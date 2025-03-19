FROM alpine:latest
RUN apk update && apk add --no-cache nginx
RUN adduser -D -g 'www' www
RUN mkdir /www && chown -R www:www /var/lib/nginx && chown -R www:www /www
COPY index.html /www/index.html
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["/bin/sh", "-c", "nginx -g 'daemon off;'"]
