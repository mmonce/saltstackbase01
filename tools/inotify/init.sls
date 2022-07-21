install_pip3:
  cmd.run:
    - name: sudo -H apt-get -y install python3-pip
#    - require:
#      - needed-pkgs
install_pyinotify:
  cmd.run:
   - name: sudo -H pip3 install pyinotify
   - require:
     - install_pip3
