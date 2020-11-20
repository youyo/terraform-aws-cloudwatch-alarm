# CloudWatch metrics alarm Terraform module

Terraform module which creates CloudWatch metrics alarm resources on AWS.  
Not supported `metric_query` .

## Requiirements

- Terraform version > 0.13

## Usage

```hcl
module my_cloudwatch_alarm {
  source = "youyo/cloudwatch-alarm/aws"

  namespace   = "AWS/SQS"
  identifier  = "my-alarm/prod"
  metric_name = "ApproximateNumberOfMessagesDelayed"

  dimensions = {
    QueueName = "my-sqs-name"
  }

  period              = 60
  evaluation_periods  = 10
  datapoints_to_alarm = 2
  threshold           = 1
  statistic           = "Average"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  treat_missing_data  = "missing"

  alarm_actions             = ["my-sns-topic-arn"]
  ok_actions                = ["my-sns-topic-arn"]
  insufficient_data_actions = []

  tags = {
    Env = "production"
  }

}
```
