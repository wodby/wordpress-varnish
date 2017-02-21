# bigfiles.vcl -- Bypass Cache for Large Files

sub vcl_backend_response {
    # Bypass cache for files > N MB
    if (std.integer(beresp.http.Content-Length, 0) > {{ getenv "VARNISH_BIGFILES_SIZE" "10485760" }}) {
        set beresp.uncacheable = true;
        set beresp.ttl = {{ getenv "VARNISH_BIGFILES_TTL" "120s" }};
        return (deliver);
    }
}
