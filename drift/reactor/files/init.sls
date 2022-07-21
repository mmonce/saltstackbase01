fix_/moncelab/sample-config-file:
#Looks like a state file has been copied to the local minion before the beacon was enabled? SEE LINK IN NEXT LINE
# https://www.linode.com/docs/guides/monitoring-salt-minions-with-beacons/
  local.state.apply:
    - tgt: {{ data['id'] }}
    - arg:
      - managed_files/sample-config-file
