FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf

RUN sudo apt-get install python python-pip

RUN sudo pip install awscli

ADD ./entrypoint.sh /app/docker/entrypoint.sh

RUN chmod +x /app/docker/entrypoint.sh

COPY maintenance.html /var/www/nginx-default/maintenance.html

ENTRYPOINT ["/app/docker/entrypoint.sh"]
