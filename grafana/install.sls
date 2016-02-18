# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "grafana/map.jinja" import grafana with context %}

grafana_install__pkg:
  pkg.installed:
    - name: {{ grafana.pkg }}
