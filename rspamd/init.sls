include:
  - rspamd.install
  - rspamd.config

rspamd_service:
  service.running:
    - name: rspamd
    - enable: {{ salt['pillar.get']('rspamd:enable_service', True) }}
    - require:
      - sls: rspamd.install
