resource "newrelic_alert_policy" "rakesh_nrql" {
  name = var.name
}

resource "newrelic_nrql_alert_condition" "rkcondition" {
 count=length(var.loop)
  account_id                     = var.account_id
  policy_id                      = newrelic_alert_policy.rakesh_nrql.id
 name                           = var.loop[count.index].key
  description                    = var.loop[count.index].description
  runbook_url                    = var.loop[count.index].runbook_url

  nrql {
    query = var.loop[count.index].nrql_query
  }

  critical {
    operator              = var.loop[count.index].operator
    threshold             = var.loop[count.index].critical_threshold
    threshold_duration    = var.loop[count.index].critical_duration
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = var.loop[count.index].operator
    threshold             = var.loop[count.index].warning_threshold
    threshold_duration    = var.loop[count.index].warning_duration
    threshold_occurrences = "ALL"
  }
}