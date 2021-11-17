# variable "aws_region" {
#   type    = string
#   default = "us-east-1"
# }

# variable "aws-profile" {
#   description = "Local AWS Profile Name "
#   type        = string
# }

# # variable "environment" {
# #   description = "AWS Environment"
# #   type        = string
# # }

variable "kafka_connector_name" {
  description = "name of the kafka connector"
  type        = string
  
}

variable "bootstrap_servers" {
  description = "Msk cluster Bootsrap connect string"
  type = string
  default = "b-2.kafka-cluster-connect.t3rwaj.c4.kafka.ap-south-1.amazonaws.com:9092,"
}

# variable "subnet_ids" {
#   description = "list of subnets"
#   type  = list
# }

variable "msk_connect_role" {
  description = "ARN of a role that MSK Connect can assume"
  type = string
  default = "arn:aws:iam::064267045885:role/aws-service-role/kafkaconnect.amazonaws.com/AWSServiceRoleForKafkaConnect"
}

# variable "security_groups" {
#   description = "list of security groups"
#   type  = list
# }

variable "custom_plugin_arn" {
  description = "arn of custom mondoDb debezium cdc plugin"
  type = string
}
