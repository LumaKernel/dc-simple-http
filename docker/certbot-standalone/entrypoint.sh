#!/bin/sh

set -eux

test -n "$CERTBOT_MAIL"
test -n "$CERTBOT_DOMAIN"

/usr/local/bin/certbot-auto certonly --standalone -m $CERTBOT_MAIL -d $CERTBOT_DOMAIN --agree-tos -n
