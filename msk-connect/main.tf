resource "local_file" "connector_config" {
  content = data.template_file.connector-config-monogo-cdc.rendered
  filename = "${path.module}/config/connector-config.json"
}

resource "null_resource" "create_connectors" {
  triggers = {
    "name" = "${var.kafka_connector_name}"
  }
  provisioner "local-exec" {
    command = <<EOF
    aws kafkaconnect create-connector --cli-input-json fileb://"${path.module}"/config/connector-config.json
    EOF
  }
}