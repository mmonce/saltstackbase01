sample-config-file:
  file.managed:
    - name: /moncelab/sample-config-file.txt
    - source: salt://filestore/sampleconf.txt
    - makedirs: True
