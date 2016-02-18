# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "grafana/map.jinja" import grafana with context %}

grafana_service__service:
  service.running:
    - name: {{ grafana.service.name }}
    - enable: True
