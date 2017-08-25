local_addrs = "{{ salt['pillar.get']('rspamd:local_addrs', '127.0.0.0/8, ::1') }}";
