# CloudWatch metrics alarm Terraform module

Terraform module which creates CloudWatch metrics alarm resources on AWS.  
Not supported `metric_query` .

## Requiirements

- Terraform version > 0.13

## Usage

```hcl
module "cloudwatch_alarm" {
  source = "youyo/cloudwatch-alarm/aws"

  identifier = "my-alarm/prod"
  dimensions = {
    QueueName = "my-sqs-name"
  }
  metric_name = "ApproximateNumberOfMessagesDelayed"
  namespace          = "AWS/SQS"
  threshold          = 1
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 2
  evaluation_periods = 10
  period = 60
  statistic = "Average"
  treat_missing_data = "missing"
  alarm_actions = ["my-sns-topic-arn"]
  ok_actions = ["my-sns-topic-arn"]
  insufficient_data_actions = []

  tags = {
    Env = "production"
  }
}
```
