resource "aws_sns_topic" "kafka_connect_alarms" {
    name = "${var.kafka_connector_name}_sns_topic"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.kafka_connect_alarms.arn
  protocol  = "email"
  endpoint  = var.support_email
}


resource "aws_cloudwatch_metric_alarm" "connect_status_alarm" {
  alarm_name                = "${var.kafka_connector_name}_status"
  comparison_operator       = "GreaterThanThreshold"
  evaluation_periods        = "2"
  metric_name               = "ErroredTaskCount"
  namespace                 = "AWS/KafkaConnect"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "0"
  alarm_description         = "This metric monitors the task failures in kafka connect"
  insufficient_data_actions = []
  alarm_actions             = [aws_sns_topic.kafka_connect_alarms.arn] 
  depends_on = [
    aws_sns_topic.kafka_connect_alarms,
    aws_sns_topic_subscription.user_updates_sqs_target
  ]
}
