include:
  - rspamd.install
  - rspamd.config
  {% if salt['pillar.get']('rspamd:dkim:enabled', False) %}
  - rspamd.dkim
  {% endif %}

rspamd_service:
  service.running:
    - name: rspamd
    - enable: {{ salt['pillar.get']('rspamd:enable_service', True) }}
    - require:
      - sls: rspamd.install
