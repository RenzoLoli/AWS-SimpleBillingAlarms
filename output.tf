###########################33333
#
# SNS MESSAGE SERVICE
#
###########################33333

output "topic_arn" {
  value = aws_sns_topic.billing-alert-notification.arn
}

output "topic_subscription_email" {
  value = aws_sns_topic_subscription.billing-alert-notification-to-admin.endpoint
}

###########################33333
#
# 5 DOLLARS ALERT
#
###########################33333

output "alert_5dollars_arn" {
  value = aws_cloudwatch_metric_alarm.alert-5-dollars.arn
}

###########################33333
#
# 25 DOLLARS ALERT
#
###########################33333

output "alert_25dollars_arn" {
  value = aws_cloudwatch_metric_alarm.alert-25-dollars.arn
}

###########################33333
#
# 100 DOLLARS ALERT
#
###########################33333

output "alert_100dollars_arn" {
  value = aws_cloudwatch_metric_alarm.alert-100-dollars.arn
}
