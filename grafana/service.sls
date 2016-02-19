# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "grafana/map.jinja" import grafana with context %}

grafana_service__service:
  service.{{ grafana.service.state }}:
    - name: {{ grafana.service.name }}
{% if grafana.service.state in [ 'running', 'dead' ] %}
    - enable: {{ grafana.service.enable }}
{% endif %}

