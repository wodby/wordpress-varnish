# Varnish docker container for WordPress

See [Docker4Wordpress](http://docker4wordpress.org)

[![Build Status](https://travis-ci.org/wodby/wordpress-varnish.svg?branch=master)](https://travis-ci.org/wodby/wordpress-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/wordpress-varnish.svg)](https://hub.docker.com/r/wodby/wordpress-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/wordpress-varnish.svg)](https://hub.docker.com/r/wodby/wordpress-varnish)

## Supported tags and respective `Dockerfile` links

- [`4.1`, `latest` (*4.1/Dockerfile*)](https://github.com/wodby/wordpress-varnish/tree/master/4.1/Dockerfile)

# Varnish docker container for WordPress

## Environment Variables Available for Customization

See more at [wodby/varnish](https://github.com/wodby/varnish)

| Environment Variable | Type | Default Value | Required | Description |
| -------------------- | -----| ------------- | -------- | ----------- |
| VARNISH_BACKEND_HOST          | String |          | ✓ | |
| VARNISH_BACKEND_PORT          | String |          | ✓ | |
| VARNISH_BIGFILES_SIZE         | Int    | 10485760 |   | | 
| VARNISH_BIGFILES_TTL          | String | 120s     |   | |
| VARNISH_MIN_GRACE             | String | 2m       |   | |
| VARNISH_DEFAULT_TTL           | String | 120s     |   | |
| VARNISH_ERRORS_GRACE          | String | 15s      |   | |
| VARNISH_STATIC_TTL            | Int    |          |   | |
| VARNISH_ALLOW_DEBUG           | Bool   |          |   | | 
| VARNISH_ALLOW_NOCACHE         | Bool   |          |   | | 
| VARNISH_CLOUDFLARE            | Bool   |          |   | | 
| VARNISH_CLOUDFLARE_RAILGUN_IP | Bool   |          |   | | 
| VARNISH_MOBILE_CASH           | Bool   |          |   | |
| VARNISH_ADMIN_SUBDOMAIN       | Bool   |          |   | |
| VARNISH_STRIP_QUERY_PARAMS    | Bool   |          |   | |