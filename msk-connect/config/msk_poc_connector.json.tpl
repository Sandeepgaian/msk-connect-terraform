{
    "connectorConfiguration": {
        "connector.class": "io.debezium.connector.mongodb.MongoDbConnector",
        "mongodb.password": "test",
        "connect.max.attempts": "3",
        "tasks.max": "10",
        "mongodb.user": "test",
        "mongodb.name": "poc",
        "mongodb.hosts": "172.31.1.22:27017",
        "data.include.list": "test"
    },
    "connectorName": "${kafka_connector_name}",
    "kafkaCluster": {
        "apacheKafkaCluster": {
            "bootstrapServers": "${bootstrap_servers}",
            "vpc": {
                "subnets": ["subnet-6484a42e", "subnet-8ef81ee7", "subnet-53b77528"],
                "securityGroups": ["sg-0ac650662bad73b68"]
            }
        }
    },
    "capacity": {
        "provisionedCapacity": {
            "mcuCount": 2,
            "workerCount": 4
        }
    },
    "kafkaConnectVersion": "2.7.1",
    "serviceExecutionRoleArn": "${msk_connect_role}",
    "plugins": [
        {
            "customPlugin": {
                "customPluginArn": "${custom_plugin_arn}",
                "revision": 1
            }
        }
    ],
    "kafkaClusterEncryptionInTransit": {"encryptionType": "PLAINTEXT"},
    "kafkaClusterClientAuthentication": {"authenticationType": "NONE"}
}