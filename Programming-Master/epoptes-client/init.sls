/etc/default/epoptes-client:
  file.managed:
    - order: first
    - makeDirs: true
    - source: salt://epoptes-client/epoptes-client
    - user: root
    - group: root
    - mode: 644

epoptes-client:
  pkg:
    - installed
    - order: last
  service:
    - running
    - require:
      - pkg: epoptes-client
      - file: /etc/default/epoptes-client
