# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - grafana.install
  - grafana.config
  - grafana.service

extend:
  grafana_config__conffile:
    file:
      - require:
        - pkg: grafana_install__pkg
  grafana_service__service:
    service:
      - watch:
        - file: grafana_config__conffile
      - require:
        - pkg: grafana_install__pkg

