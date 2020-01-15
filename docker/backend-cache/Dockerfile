ARG VARNISH_TAG="6.2"

FROM varnish:${VARNISH_TAG}

COPY ./default.vcl /etc/varnish/

RUN mkdir -p /var/lib/varnish
