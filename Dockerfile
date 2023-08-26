FROM nginx:alpine
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
COPY . .
RUN ls -alh
EXPOSE 8080