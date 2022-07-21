#State file that defines how to react:
#receives data from the event bus
#JINJA code checks event bus data to see if service 'cron' is NOT 'running'
#IE == False
#and to excute commond on minion ID 'id' in event to start_service arg: cron

{% if data['cron']['running'] == False %}
start_service:
  local.service.start:
    - tgt: {{ data['id'] }}
    - arg:
      - cron
{% endif %}
