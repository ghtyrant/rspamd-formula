rspamd_options:
  file.managed:
    - name: /etc/rspamd/local.d/options.inc
    - source: salt://rspamd/files/options.inc
    - template: jinja

rspamd_worker_normal:
  file.managed:
    - name: /etc/rspamd/local.d/worker-normal.inc
    - source: salt://rspamd/files/worker-normal.inc
    - template: jinja

rspamd_worker_controller:
  file.managed:
    - name: /etc/rspamd/local.d/worker-controller.inc
    - source: salt://rspamd/files/worker-controller.inc
    - template: jinja

rspamd_worker_proxy:
  file.managed:
    - name: /etc/rspamd/local.d/worker-proxy.inc
    - source: salt://rspamd/files/worker-proxy.inc
    - template: jinja

rspamd_logging:
  file.managed:
    - name: /etc/rspamd/local.d/logging.inc
    - source: salt://rspamd/files/logging.inc
    - template: jinja

rspamd_milter_headers:
  file.managed:
    - name: /etc/rspamd/local.d/milter_headers.conf
    - source: salt://rspamd/files/milter_headers.conf
    - template: jinja

