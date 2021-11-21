variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

# variable "aws-profile" {
#   description = "Local AWS Profile Name "
#   type        = string
# }

# variable "environment" {
#   description = "AWS Environment"
#   type        = string
# }

variable "kafka_connector_name" {
  description = "name of the kafka connector"
  type        = string
  
}

variable "bootstrap_servers" {
  description = "Msk cluster Bootsrap connect string"
  type = string
  default = "b-2.kafka-cluster-connect.t3rwaj.c4.kafka.ap-south-1.amazonaws.com:9092,"
}

variable "subnet_ids" {
  description = "list of subnets"
  type  = string
}

variable "msk_connect_role" {
  description = "ARN of a role that MSK Connect can assume"
  type = string
  default = "arn:aws:iam::064267045885:role/aws-service-role/kafkaconnect.amazonaws.com/AWSServiceRoleForKafkaConnect"
}

variable "security_groups" {
  description = "list of security groups"
  type  = string
}

variable "custom_plugin_arn" {
  description = "arn of custom mondoDb debezium cdc plugin"
  type = string
}

variable "max_worker_count" {
  description = "Maximum number of worker counts"
  type = string
}

variable "min_worker_count" {
  description = "Minimum number of worker counts"
  type = string
}

variable "support_email" {
   description = "Email for alarm notifications"
   type = string
}

variable "mongodb_username" {
    description = "mongodb username"
    type = string  
}

variable "mongodb_password" {
    description = "mongodb password"
    type = string  
}

variable "number_of_tasks" {
    description = "maximum number of kafka connect tasks"
    type = string  
}

variable "database_include_list" {
    description = "comma separated list of databases to be included"
    type = string  
}

variable "collection_include_list" {
    description = "comma separated list of collections to included"
    type = string  
}
