{{ if getenv "VARNISH_CLOUDFLARE_RAILGUN_IP" }}
acl cloudflare {
	# set this ip to your Railgun IP (if applicable)
	{{ getenv "VARNISH_CLOUDFLARE_RAILGUN_IP" }}
}
{{ end }}
