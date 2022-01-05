#!/bin/bash
chown -R $USER:$USER /var/www/html/aglcomputer/
chown -R 777 /var/www/html/aglcomputer/ 
cd /var/www/html/aglcomputer
composer install
cd bin
./magento setup:install --base-url=http://aglcomputer.store/ \
--db-host=localhost --db-name=aglcomputer --db-user=aglcomputer --db-password=Pass@magento123 \
--admin-firstname=Admin --admin-lastname=Admin --admin-email=conganh1235a@gmail.com \
--admin-user=aglcomputer --admin-password=Pass@magento123#! --language=en_US \
--currency=VND --timezone=Asia/Ho_Chi_Minh --use-rewrites=1 \
--search-engine=elasticsearch7 --elasticsearch-host=localhost \
--elasticsearch-port=9200
