FROM nginx

RUN cd /etc/nginx && sed -i "s/user www-data;/user $USER;/" nginx.conf
ADD ./docker/nginx/aglcomputer.store /etc/nginx/sites-enabled
# RUN chown -R $USER:$USER /var/www/html/aglcomputer/
# RUN chmod -R 777 /var/www/html/aglcomputer/
RUN sh -c "echo '127.0.0.1 aglcomputer.store' >> /etc/hosts"
