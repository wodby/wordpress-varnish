{{ if getenv "VARNISH_CLOUDFLARE_RAILGUN_IP" }}
acl cloudflare {
	# set this ip to your Railgun IP (if applicable)
	{{ getenv "VARNISH_CLOUDFLARE_RAILGUN_IP" }}
}
{{ end }}

acl purge {
    "172.16.0.0/12";
	"localhost";
	"127.0.0.1";
	"172.17.0.0/16";
}
