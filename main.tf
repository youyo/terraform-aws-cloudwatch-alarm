resource aws_cloudwatch_metric_alarm this {
  alarm_name                = "/${var.namespace}/${var.identifier}/${var.metric_name}"
  comparison_operator       = var.comparison_operator
  datapoints_to_alarm       = var.datapoints_to_alarm
  evaluation_periods        = var.evaluation_periods
  metric_name               = var.metric_name
  namespace                 = var.namespace
  period                    = var.period
  statistic                 = var.statistic
  threshold                 = var.threshold
  treat_missing_data        = var.treat_missing_data
  alarm_actions             = var.alarm_actions
  ok_actions                = var.ok_actions
  insufficient_data_actions = var.insufficient_data_actions
  dimensions                = var.dimensions
}
