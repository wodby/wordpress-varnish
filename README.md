# Varnish for WordPress Docker Container Image

[![Build Status](https://travis-ci.org/wodby/wordpress-varnish.svg?branch=master)](https://travis-ci.org/wodby/wordpress-varnish)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/wordpress-varnish.svg)](https://hub.docker.com/r/wodby/wordpress-varnish)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/wordpress-varnish.svg)](https://hub.docker.com/r/wodby/wordpress-varnish)
[![Docker Layers](https://images.microbadger.com/badges/image/wodby/wordpress-varnish.svg)](https://microbadger.com/images/wodby/wordpress-varnish)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)

## Docker Images

* All images are based on Alpine Linux
* Base image: [wodby/varnish](https://github.com/wodby/varnish)
* [Travis CI builds](https://travis-ci.org/wodby/wordpress-varnish) 
* [Docker Hub](https://hub.docker.com/r/wodby/wordpress-varnish)

Supported tags and respective `Dockerfile` links:

* `4`, `4.1`, `latest` [_(Dockerfile)_](https://github.com/wodby/wordpress-varnish/tree/master/4/Dockerfile)

For better reliability we additionally release images with stability tags (`wodby/wordpress-varnish:4.1-X.X.X`) which correspond to [git tags](https://github.com/wodby/wordpress-varnish/releases). We **strongly recommend** using images only with stability tags. 

## Environment Variables

See more at [wodby/varnish](https://github.com/wodby/varnish)

| Variable                      | Default Value | Description |
| ----------------------------- | ------------- | ----------- |
| VARNISH_BACKEND_HOST          |               |             |
| VARNISH_BACKEND_PORT          | 80            |             |
| VARNISH_BIGFILES_SIZE         | 10485760      |             |
| VARNISH_BIGFILES_TTL          | 120s          |             |
| VARNISH_MIN_GRACE             | 2m            |             |
| VARNISH_DEFAULT_TTL           | 120s          |             |
| VARNISH_ERRORS_GRACE          | 15s           |             |
| VARNISH_STATIC_TTL            |               |             |
| VARNISH_ALLOW_DEBUG           |               |             |
| VARNISH_ALLOW_NOCACHE         |               |             |
| VARNISH_CLOUDFLARE            |               |             |
| VARNISH_CLOUDFLARE_RAILGUN_IP |               |             |
| VARNISH_MOBILE_CASH           |               |             |
| VARNISH_ADMIN_SUBDOMAIN       |               |             |
| VARNISH_STRIP_QUERY_PARAMS    |               |             |

## Complete WordPress Stack

See [Docker4WordPress](https://github.com/wodby/docker4wordpress).
