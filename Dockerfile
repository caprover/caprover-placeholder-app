FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
RUN apk update && apk add curl
CMD ["sh", "-c", "curl http://res.mtc.caprover.com/v1/plc ; nginx -g 'daemon off;'"]
