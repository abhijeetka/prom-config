# prom-config
Prometheus Configuration Container for Custom Catolog  - Test

# Alert Rules

ALERT Rules for checking if Host is Down
ALERT RancherHostDown
  IF  rancher_hosts == 0
  FOR 1m
  LABELS { severity = "Rancher-Host-Down" }
  ANNOTATIONS {
    summary = "Rancher Host Down",
    description = "Rancher Host : {{$labels.instance}} with Name : {{$labels.name}} is Down(0 for Down and 1 for Up) : (current value: {{$value}})",
  }

