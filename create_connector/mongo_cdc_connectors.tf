# module "mongodb-cdc-connectors" {
#     source = "../msk-connect/"
#     aws-profile = "gaian-solution"
#     kafka_connector_name = "test-connector-tf"
#     bootstrap_servers = "b-2.kafka-cluster-connect.t3rwaj.c4.kafka.ap-south-1.amazonaws.com:9092,b-1.kafka-cluster-connect.t3rwaj.c4.kafka.ap-south-1.amazonaws.com:9092,b-3.kafka-cluster-connect.t3rwaj.c4.kafka.ap-south-1.amazonaws.com:9092"
#     subnet_ids = ["subnet-6484a42e","subnet-8ef81ee7","subnet-53b77528"]
#     security_groups = ["sg-0ac650662bad73b68"]
#     msk_connect_role = "arn:aws:iam::064267045885:role/aws-service-role/kafkaconnect.amazonaws.com/AWSServiceRoleForKafkaConnect"
#     custom_plugin_arn = "arn:aws:kafkaconnect:ap-south-1:064267045885:custom-plugin/debezium-connector-mongodb-1-7-1/6b133467-84f5-40ea-a50e-c1fe71aa4900-4"
# }


module "mongodb-cdc-connectors" {
    source = "../msk-connect/"
    kafka_connector_name = "testing"
    bootstrap_servers = "b-2.kafka-cluster-connect.t3rwaj.c4.kafka.ap-south-1.amazonaws.com:9092,b-1.kafka-cluster-connect.t3rwaj.c4.kafka.ap-south-1.amazonaws.com:9092,b-3.kafka-cluster-connect.t3rwaj.c4.kafka.ap-south-1.amazonaws.com:9092"
    msk_connect_role = "arn:aws:iam::064267045885:role/aws-service-role/kafkaconnect.amazonaws.com/AWSServiceRoleForKafkaConnect"
    custom_plugin_arn = "arn:aws:kafkaconnect:ap-south-1:064267045885:custom-plugin/debezium-connector-mongodb-1-7-1/6b133467-84f5-40ea-a50e-c1fe71aa4900-4"
}