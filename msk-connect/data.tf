data "template_file" "connector-config-monogo-cdc" {
    template = "${file("${path.module}/config/msk_poc_connector.json.tpl")}"
    vars = {
        kafka_connector_name = "${var.kafka_connector_name}"
        bootstrap_servers   = "${var.bootstrap_servers}"
        subnet_ids          = "${jsonencode(split(",", var.subnet_ids))}"
        security_groups     = "${jsonencode(split(",", var.security_groups))}"
        msk_connect_role    = "${var.msk_connect_role}"
        custom_plugin_arn   = "${var.custom_plugin_arn}"
        max_worker_count    = "${var.max_worker_count}"
        min_worker_count    = "${var.min_worker_count}"
        database_include_list     = "${var.database_include_list}"
        collection_include_list     = "${var.collection_include_list}"
        mongodb_username    = "${var.mongodb_username}"
        mongodb_password    = "${var.mongodb_password}"
        number_of_tasks     = "${var.number_of_tasks}"

    }
}
