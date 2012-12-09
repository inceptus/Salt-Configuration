'key-add':
  cmd.run:
    - name: 'wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -'
    - unless: "test \"`apt-key list | grep '7FAC5991' | wc -l`\" == 1"
    - order: 1

'source-add':
  cmd.run:
    - name: 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'
    - unless: 'test -f /etc/apt/sources.list.d/google.list'
    - order: 2

'apt-update':
  cmd.run:
    - order: 3
    - name: 'apt-get update'

'install':
  cmd.run:
    - name: 'apt-get install google-chrome-stable -y'
    - unless: 'test -f /usr/bin/google-chrome'
    - order: 4
