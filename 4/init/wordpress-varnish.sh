#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

function exec_tpl {
    gotpl "/etc/gotpl/$1" > "$2"
}

mkdir -p /etc/varnish/conf
mkdir -p /etc/varnish/lib

exec_tpl 'varnishd.init.d.tpl' '/etc/init.d/varnishd'
exec_tpl 'secret.tpl' '/etc/varnish/secret'
exec_tpl 'default.vcl.tpl' '/etc/varnish/default.vcl'

exec_tpl 'conf/acl.vcl.tpl'         '/etc/varnish/conf/acl.vcl'
exec_tpl 'conf/backend.vcl.tpl'     '/etc/varnish/conf/backend.vcl'
exec_tpl 'lib/bigfiles.vcl.tpl'     '/etc/varnish/lib/bigfiles.vcl'
exec_tpl 'lib/cloudflare.vcl.tpl'   '/etc/varnish/lib/cloudflare.vcl'
exec_tpl 'lib/mobile_cache.vcl.tpl' '/etc/varnish/lib/mobile_cache.vcl'
exec_tpl 'lib/mobile_pass.vcl.tpl'  '/etc/varnish/lib/mobile_pass.vcl'
exec_tpl 'lib/purge.vcl.tpl'        '/etc/varnish/lib/purge.vcl'
exec_tpl 'lib/static.vcl.tpl'       '/etc/varnish/lib/static.vcl'
exec_tpl 'lib/xforward.vcl.tpl'     '/etc/varnish/lib/xforward.vcl'
