include:
  - opencart.update

#Creating User
demouser:
  user.present:
    - fullname: Demo User
    - shell: /bin/bash
    - home: /home/demouser
    - groups:
      - sudo

# Packages Needed for Install
needed-pkgs:
  pkg.installed:
    - pkgs:
      - unzip
    - require:
      - ubuntu_update

install_pip3:
  cmd.run:
    - name: sudo -H apt-get -y install python3-pip
    - require:
      - needed-pkgs

install_pyinotify:
  cmd.run:
    - name: sudo -H pip3 install pyinotify
    - require:
      - install_pip3

# Final Script Configuration
#/var/www/opencart:
#  cmd:
#    - script
#    - source: salt://opencart/files/setup.sh
#    - onlyif: 'test ! -e /var/www/opencart'

# Create Beacon to Protect Index.php
#deploy_beacon_file:
#  file.managed:
#    - name: /etc/salt/minion.d/beacons.conf
#    - source: salt://opencart/files/beacons.conf
#    - makedirs: True

#restart_minion:
#  cmd.run:
#    - name: service salt-minion restart
#    - bg: True
#    - onchanges:
#      - file: deploy_beacon_file
