data "template_file" "connector-config-monogo-cdc" {
    template = "${file("${path.module}/config/msk_poc_connector.json.tpl")}"
    vars = {
        kafka_connector_name = "${var.kafka_connector_name}"
        bootstrap_servers   = "${var.bootstrap_servers}"
        # subnet_ids          = "${var.subnet_ids}"
        # security_groups     = "${var.security_groups}"
        msk_connect_role    = "${var.msk_connect_role}"
        custom_plugin_arn   = "${var.custom_plugin_arn}"
    }
}
