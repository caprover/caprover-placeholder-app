FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
RUN apk update && apk add curl
CMD ["curl", "http://placeholder.mtc.caprover.com", "&&", "nginx", "-g", "daemon off;"]
