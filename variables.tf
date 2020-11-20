variable identifier {
  type        = string
  description = ""
}
variable metric_name {
  type        = string
  description = ""
}
variable namespace {
  type        = string
  description = ""
  validation {
    condition     = substr(var.namespace, 0, 4) == "AWS/"
    error_message = "The namespace value must be a valid, starting with \"AWS/\"."
  }
}
variable threshold {
  type        = number
  description = ""
  default     = 1
}
variable comparison_operator {
  type        = string
  description = ""
  default     = "GreaterThanOrEqualToThreshold"
  validation {
    condition     = var.comparison_operator == "GreaterThanOrEqualToThreshold" || var.comparison_operator == "GreaterThanThreshold" || var.comparison_operator == "LessThanThreshold" || var.comparison_operator == "LessThanOrEqualToThreshold" || var.comparison_operator == " LessThanLowerOrGreaterThanUpperThreshold" || var.comparison_operator == "LessThanLowerThreshold" || var.comparison_operator == "GreaterThanUpperThreshold"
    error_message = "The comparison_operator value must be a valid. ref) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm ."
  }
}
variable datapoints_to_alarm {
  type        = number
  description = ""
  default     = 2
}
variable evaluation_periods {
  type        = number
  description = ""
  default     = 10
}
variable period {
  type        = number
  description = ""
  default     = 60
}
variable statistic {
  type        = string
  description = ""
  default     = "Average"
  validation {
    condition     = var.statistic == "SampleCount" || var.statistic == "Average" || var.statistic == "Sum" || var.statistic == "Minimum" || var.statistic == "Maximum"
    error_message = "The statistic value must be a valid. ref) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm ."
  }
}
variable treat_missing_data {
  type        = string
  description = ""
  default     = "missing"
  validation {
    condition     = var.treat_missing_data == "missing" || var.treat_missing_data == "ignore" || var.treat_missing_data == "breaching" || var.treat_missing_data == "notBreaching"
    error_message = "The treat_missing_data value must be a valid. ref) https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm ."
  }
}
variable alarm_actions {
  type        = list(string)
  description = ""
  default     = []
}
variable ok_actions {
  type        = list(string)
  description = ""
  default     = []
}
variable insufficient_data_actions {
  type        = list(string)
  description = ""
  default     = []
}
variable dimensions {
  type        = map(string)
  description = ""
  default     = {}
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource"
}
