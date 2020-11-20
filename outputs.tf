output arn {
  value       = aws_cloudwatch_metric_alarm.this.arn
  description = "The ARN of the cloudwatch metric alarm"
}
output id {
  value       = aws_cloudwatch_metric_alarm.this.id
  description = "The ID of the health check"
}
