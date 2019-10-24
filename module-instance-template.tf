module "instance-template" {
  source                 = "./modules/instance-template"
  region                 = "${var.region}"
  secondary_machine_type = "${local.rendered_secondary_machine_type}"

  ptfe_subnet             = "${var.subnet}"
  cluster_endpoint        = "${var.prefix}-primary-0-${random_string.postfix.result}"
  bootstrap_token_id      = "${random_string.bootstrap_token_id.result}"
  bootstrap_token_suffix  = "${random_string.bootstrap_token_suffix.result}"
  setup_token             = "${random_string.setup_token.result}"
  image_family            = "${var.image_family}"
  #install_type            = "${var.install_type}"
  repl_data               = "${base64encode("${random_pet.console_password.id}")}"
  release_sequence        = "${var.release_sequence}"
  boot_disk_size          = "${var.boot_disk_size}"
  prefix                  = "${var.prefix}"
  airgap_package_url      = "${var.airgap_package_url}"
  airgap_installer_url    = "${var.airgap_installer_url}"
  encryption_password     = "${var.encryption_password}"
  postgresql_user         = "${var.postgresql_user}"
  postgresql_password     = "${var.postgresql_password}"
  postgresql_address      = "${var.postgresql_address}"
  postgresql_database     = "${var.postgresql_database}"
  postgresql_extra_params = "${var.postgresql_extra_params}"
  gcs_credentials         = "${var.gcs_credentials}"
  credentials_file        = "${var.credentials_file}"
  project                 = "${var.project}"
  gcs_project             = "${var.gcs_project}"
  gcs_bucket              = "${var.gcs_bucket}"
  weave_cidr              = "${var.weave_cidr}"
  repl_cidr               = "${var.repl_cidr}"
  ptfe_install_url        = "${var.ptfe_install_url}"
  jq_url                  = "${var.jq_url}"
}
