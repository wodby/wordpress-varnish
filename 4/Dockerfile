ARG FROM_TAG

FROM wodby/varnish:${FROM_TAG}

COPY templates /etc/gotpl
COPY init /docker-entrypoint-init.d/