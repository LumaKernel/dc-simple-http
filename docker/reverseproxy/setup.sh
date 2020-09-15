#!/bin/sh

set -eux

test -n "$REVERSEPROXY_DOMAIN"

envsubst '$REVERSEPROXY_DOMAIN' < /nginx.conf.template > /etc/nginx/nginx.conf
cat /etc/nginx/nginx.conf
nginx -t
