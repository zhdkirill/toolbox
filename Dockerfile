FROM alpine:3.20
RUN apk --no-cache --no-progress upgrade && \
    apk --no-cache --no-progress add bind-tools jq yq curl kubectl busybox-extras
RUN mkdir -p /var/www/localhost/htdocs && \
    echo "Hello, World!" > /var/www/localhost/htdocs/index.html
EXPOSE 80
CMD ["httpd", "-f", "-v", "-p", "80", "-h", "/var/www/localhost/htdocs"]