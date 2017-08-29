password = "{{ salt['pillar.get']('rspamd:worker-controller:password', '') }}";
bind_socket = "{{ salt['pillar.get']('rspamd:worker-controller:bind_socket', '') }}";
