FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

COPY maintenance.html /var/www/nginx-default/maintenance.html

ENTRYPOINT ["nginx"]
