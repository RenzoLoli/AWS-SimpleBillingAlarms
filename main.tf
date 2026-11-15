###########################33333
#
# SNS NOTIFICATION SERVICE
#
###########################33333

resource "aws_sns_topic" "billing-alert-notification" {
  name = "billing-alert-notification"
}

resource "aws_sns_topic_subscription" "billing-alert-notification-to-admin" {
  topic_arn = aws_sns_topic.billing-alert-notification.arn
  protocol  = "email"
  endpoint  = "test@example.com"
}

###########################33333
#
# 5 DOLLARS ALERT
#
###########################33333

resource "aws_cloudwatch_metric_alarm" "alert-5-dollars" {
  alarm_name          = "billing-alarm-5-dollars"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = 21600
  dimensions = {
    Currency = "USD"
  }
  statistic                 = "Maximum"
  threshold                 = 5
  alarm_description         = "This metric allows to notify to user over 5 dollars used"
  insufficient_data_actions = []
  alarm_actions             = [aws_sns_topic.billing-alert-notification.arn]
}

###########################33333
#
# 25 DOLLARS ALERT
#
###########################33333

resource "aws_cloudwatch_metric_alarm" "alert-25-dollars" {
  alarm_name          = "billing-alarm-25-dollars"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = 21600
  dimensions = {
    Currency = "USD"
  }
  statistic                 = "Maximum"
  threshold                 = 25
  alarm_description         = "This metric allows to notify to user over 25 dollars used"
  insufficient_data_actions = []
  alarm_actions             = [aws_sns_topic.billing-alert-notification.arn]
}

###########################33333
#
# 100 DOLLARS ALERT
#
###########################33333

resource "aws_cloudwatch_metric_alarm" "alert-100-dollars" {
  alarm_name          = "billing-alarm-100-dollars"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = 1
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = 21600
  dimensions = {
    Currency = "USD"
  }
  statistic                 = "Maximum"
  threshold                 = 100
  alarm_description         = "This metric allows to notify to user over 100 dollars used"
  insufficient_data_actions = []
  alarm_actions             = [aws_sns_topic.billing-alert-notification.arn]
}
