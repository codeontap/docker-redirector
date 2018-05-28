#!/bin/bash

if [[ -n ${OPSDATA_BUCKET} && -n ${SETTINGS_PREFIX} && -n ${WEBSITE} ]]; then
    aws s3 cp s3://${OPSDATA_BUCKET}/${SETTINGS_PREFIX}/${WEBSITE} /var/www/nginx-default --recursive
else
    mkdir --parents /var/www/nginx-default
    cp /app/docker/maintenance.html /var/www/nginx-default/maintenance.html
fi

nginx
