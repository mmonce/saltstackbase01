#Copies the reactor.conf from the SSC File server
#To the master /etc/salt/master.d directory
#And restarts the salt master to enable the new reactor configuration
copy_reactor:
  file.managed:
    - name: /etc/salt/master.d/reactor.conf
    - source: salt://reactor/reactor.conf
     
restart_master:
  service.running:
    - name: salt-master
    - watch:
      - copy_reactor
