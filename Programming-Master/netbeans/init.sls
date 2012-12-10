/usr/local/netbeans/install.sh:
  file.managed:
    - order: first
    - makeDirs: true
    - source: salt://netbeans/install.sh
    - user: root
    - group: root
    - mode: 755

'install-netbeans':
  cmd.run:
    - name: '/usr/local/netbeans/install.sh --silent'
    - order: last
