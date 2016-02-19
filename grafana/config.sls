# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "grafana/map.jinja" import grafana with context %}

grafana_config__conffile:
  file.managed:
    - name: {{ grafana.conffile }}
    - source: salt://grafana/files/configtempl.jinja
    - template: jinja
    - context:
      confdict: {{grafana|json}}
    - mode: 644
    - user: root
    - group: root
