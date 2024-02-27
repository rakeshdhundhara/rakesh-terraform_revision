variable "account_id" {
  type = number
  default ="4268913"
}

variable "api_key" {
  type = string
  default = "NRAK-RKR4W00BTZXP9II15IWZQKC0SLR"
}
variable "region" {
  type = string
  default = "US"
}
variable "name" {
  type = string
 default = "terraformdefault"
}
variable "loop" {
    type = list(any)
    default = [ {
    key               = "condition1"
    description       = "Description for condition 1"
    runbook_url       = "https://example.com/runbook1"
    nrql_query        = "SELECT average(diskUsedPercent) FROM StorageSample"
    operator          = "above"
    critical_threshold = 86
    critical_duration  = 600
    warning_threshold  = 82
    warning_duration   = 600
  },
  {
    key               = "condition2"
    description       = "Description for condition 2"
    runbook_url       = "https://example.com/runbook2"
    nrql_query        = "SELECT average(cpuPercent) FROM SystemSample"
    operator          = "below"
    critical_threshold = 83
    critical_duration  = 600
    warning_threshold  = 76
    warning_duration   = 300
  }, ]
  
}