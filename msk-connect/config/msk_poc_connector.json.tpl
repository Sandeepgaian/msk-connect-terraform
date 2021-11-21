{
    "connectorConfiguration": {
        "connector.class": "io.debezium.connector.mongodb.MongoDbConnector",
        "mongodb.password": "${mongodb_password}",
        "connect.max.attempts": "3",
        "tasks.max": "${number_of_tasks}",
        "mongodb.user": "${mongodb_username}",
        "mongodb.name": "poc",
        "mongodb.hosts": "172.31.1.22:27017",
        "database.include.list": "${database_include_list}",
        "collection.include.list" : "${collection_include_list}"
    },
    "connectorName": "${kafka_connector_name}",
    "kafkaCluster": {
        "apacheKafkaCluster": {
            "bootstrapServers": "${bootstrap_servers}",
            "vpc": {
                "subnets": ${subnet_ids},
                "securityGroups": ${security_groups}
            }
        }
    },
    "capacity": {
        "autoScaling": {
            "maxWorkerCount": ${max_worker_count},
            "mcuCount": 1,
            "minWorkerCount": ${min_worker_count},
            "scaleInPolicy": {
                "cpuUtilizationPercentage": 20
            },
            "scaleOutPolicy": {
                "cpuUtilizationPercentage": 80
            }
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