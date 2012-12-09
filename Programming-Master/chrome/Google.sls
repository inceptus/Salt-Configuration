/etc/apt/sources.list.d/google.list:
  file.managed:
    - source: salt://chrome/google.list
    - user: root
    - group: root
    - mode: 644
