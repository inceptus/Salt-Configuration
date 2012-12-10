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
    - unless: 'test -f /usr/local/netbeans-7.2.1/bin/netbeans'
    - order: last
