/etc/default/epoptes:
  file.managed:
    - order: first
    - makeDirs: true
    - source: salt://epoptes-client/epoptes
    - user: root
    - group: root
    - mode: 644

epoptes-client:
  pkg:
    - installed
    - order: last
