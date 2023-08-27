FROM nginx:alpine
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 8080