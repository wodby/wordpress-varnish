ARG VARNISH_VER

FROM wodby/varnish:${VARNISH_VER}

COPY templates /etc/gotpl
COPY init /docker-entrypoint-init.d/