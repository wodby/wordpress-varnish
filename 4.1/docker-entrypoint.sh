#!/usr/bin/env bash

set -e

if [[ -n $DEBUG ]]; then
  set -x
fi

function execTpl {
    if [[ -f "/etc/gotpl/$1" ]]; then
        gotpl "/etc/gotpl/$1" > "$2"
    fi
}

execInitScripts() {
    shopt -s nullglob
    for f in /docker-entrypoint-init.d/*.sh; do
        echo "$0: running $f"
        . "$f"
    done
    shopt -u nullglob
}

checkVarnishSecret() {
    if [[ -z $VARNISH_SECRET ]]; then
        export VARNISH_SECRET=$(pwgen -s 128 1)
        echo "Generated Varnish secret: ${VARNISH_SECRET}"
    fi
}

checkVarnishSecret

execTpl 'varnishd.init.d.tpl' '/etc/init.d/varnishd'
execTpl 'secret.tpl' '/etc/varnish/secret'
execTpl 'default.vcl.tpl' '/etc/varnish/default.vcl'

ls -la /etc/gotpl

mkdir -p /etc/varnish/conf
mkdir -p /etc/varnish/lib

execTpl 'conf/acl.vcl.tpl'         '/etc/varnish/conf/acl.vcl'
execTpl 'conf/backend.vcl.tpl'     '/etc/varnish/conf/backend.vcl'
execTpl 'lib/bigfiles.vcl.tpl'     '/etc/varnish/lib/bigfiles.vcl'
execTpl 'lib/cloudflare.vcl.tpl'   '/etc/varnish/lib/cloudflare.vcl'
execTpl 'lib/mobile_cache.vcl.tpl' '/etc/varnish/lib/mobile_cache.vcl'
execTpl 'lib/mobile_pass.vcl.tpl'  '/etc/varnish/lib/mobile_pass.vcl'
execTpl 'lib/purge.vcl.tpl'        '/etc/varnish/lib/purge.vcl'
execTpl 'lib/static.vcl.tpl'       '/etc/varnish/lib/static.vcl'
execTpl 'lib/xforward.vcl.tpl'     '/etc/varnish/lib/xforward.vcl'

chmod +x /etc/init.d/varnishd
execInitScripts

exec "$@"
