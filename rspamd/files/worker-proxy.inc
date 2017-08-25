bind_socket = "{{ salt['pillar.get']('rspamd:worker-proxy:bind_socket', 'localhost:11332') }}";
milter = yes;
timeout = 120s;
upstream "local" {
  default = yes;
  self_scan = yes;
}
