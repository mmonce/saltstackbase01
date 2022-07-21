#install_pip3:
#  cmd.run:
#    - name: sudo -H apt-get -y install python3-pip
#    - require:
#      - needed-pkgs

#install_pyinotify:
#  cmd.run:
#   - name: sudo -H pip3 install pyinotify
#   - require:
#     - install_pip3

include:
  - tools.inotify

file_beacons:
  beacon.present:
   - name: inotify
   - save: True
   - enable: True
   - files:
      /moncelab/sample-config-file.txt:
        mask:
          - modify
   - interval: 10
   - beacon_module: inotify
   - disable_during_state_run: True
   - require:
     - install_pyinotify
