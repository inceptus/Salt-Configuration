'key-add':
  cmd.run:
    - name: 'wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -'
    - order: 1

'source-add':
  cmd.run:
    - name: 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    - unless: '/usr/bin/test -f /etc/apt/sources.list.d/google.list'
    - order: 2

'apt-update':
  cmd.run:
    - order: 3
    - name: 'apt-get update'

'install':
  cmd.run:
    - name: 'apt-get install google-chrome-stable -y'
    - order: 4
