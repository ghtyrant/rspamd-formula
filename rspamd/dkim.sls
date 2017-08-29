{% set dkim = salt['pillar.get']('rspamd:dkim', {}) %}

rspamd_dkim_directory:
  file.directory:
    - name: {{ dkim.base_dir }}
    - present: True
    - mode: 700
    - user: _rspamd
    - group: _rspamd

rspamd_dkim_config:
  file.managed:
    - name: /etc/rspamd/local.d/dkim.conf
    - source: salt://rspamd/files/dkim.conf
    - template: jinja
    - watch_in:
        service: rspamd

{% for domain, data in dkim.domains.iteritems() %}
rspamd_{{ domain }}_private_key:
  file.managed:
    - name: {{ dkim.base_dir }}/{{ domain }}.dkim.key
    - mode: 600
    - user: _rspamd
    - group: _rspamd
    - contents_pillar: rspamd:dkim:domains:{{ domain }}:key
{% endfor %}
