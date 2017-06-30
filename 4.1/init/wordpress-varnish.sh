#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

function execTpl {
    if [[ -f "/etc/gotpl/$1" ]]; then
        gotpl "/etc/gotpl/$1" > "$2"
    fi
}

mkdir -p /etc/varnish/conf
mkdir -p /etc/varnish/lib

execTpl 'varnishd.init.d.tpl' '/etc/init.d/varnishd'
execTpl 'secret.tpl' '/etc/varnish/secret'
execTpl 'default.vcl.tpl' '/etc/varnish/default.vcl'

execTpl 'conf/acl.vcl.tpl'         '/etc/varnish/conf/acl.vcl'
execTpl 'conf/backend.vcl.tpl'     '/etc/varnish/conf/backend.vcl'
execTpl 'lib/bigfiles.vcl.tpl'     '/etc/varnish/lib/bigfiles.vcl'
execTpl 'lib/cloudflare.vcl.tpl'   '/etc/varnish/lib/cloudflare.vcl'
execTpl 'lib/mobile_cache.vcl.tpl' '/etc/varnish/lib/mobile_cache.vcl'
execTpl 'lib/mobile_pass.vcl.tpl'  '/etc/varnish/lib/mobile_pass.vcl'
execTpl 'lib/purge.vcl.tpl'        '/etc/varnish/lib/purge.vcl'
execTpl 'lib/static.vcl.tpl'       '/etc/varnish/lib/static.vcl'
execTpl 'lib/xforward.vcl.tpl'     '/etc/varnish/lib/xforward.vcl'
