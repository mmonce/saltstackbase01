sample-config-file:
  file.managed:
    - name: /moncelab/sampleconf.txt
    - source: salt://filestore/sampleconf.txt
    - makedirs: True
