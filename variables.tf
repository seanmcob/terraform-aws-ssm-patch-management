variable "envtype" {}

## patch baseline vars

variable "approved_patches" {
  type    = "list"
  default = [""]
}

variable "rejected_patches" {
  type    = "list"
  default = [""]
}

variable "product_versions" {
  type    = "list"
  default = ["WindowsServer2016", "WindowsServer2012R2"]
}

variable "patch_classification" {
  type    = "list"
  default = ["CriticalUpdates", "SecurityUpdates"]
}

variable "patch_severity" {
  type    = "list"
  default = ["Critical", "Important"]
}

## maintenance window vars

variable "maintenance_window_schedule" {
  default = "cron(0 0 18 ? * SUN *)"
}

variable "maintenance_window_duration" {
  default = "3"
}

variable "maintenance_window_cutoff" {
  default = "1"
}

variable "patch_group_types" {
  type    = "list"
  default = ["critical", "non-critical"]
}
