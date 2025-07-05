#!/bin/sh
envsubst '${GCP_BUCKET_URL}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
exec nginx -g 'daemon off;'
