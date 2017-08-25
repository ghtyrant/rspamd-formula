rspamd_install:
  pkg.installed:
    - name: rspamd
    - watch_in:
        - service: rspamd

rspamd_repo:
  pkgrepo.managed:
    - humanname: rspamd apt repo
    - name: deb http://rspamd.com/apt-stable/ {{ grains['oscodename'] }} main
    - file: /etc/apt/sources.list.d/rspamd-official-{{ grains['oscodename'] }}.list
    - key_url: https://rspamd.com/apt-stable/gpg.key

    - require_in:
      - pkg: rspamd_install

    - watch_in:
      - pkg: rspamd_install
