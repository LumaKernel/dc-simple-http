FROM centos:6
RUN curl https://dl.eff.org/certbot-auto > certbot-auto \
    && mv certbot-auto /usr/local/bin/certbot-auto \
    && chown root /usr/local/bin/certbot-auto \
    && chmod 0755 /usr/local/bin/certbot-auto

COPY entrypoint.sh /
CMD /entrypoint.sh
