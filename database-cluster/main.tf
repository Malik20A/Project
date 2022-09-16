  module "cluster" {
  source  = "terraform-aws-modules/rds-aurora/aws"

  name           = "test-aurora-db-postgres96"
  engine         = "${var.engine}"
  engine_version = "${var.engine_version}"
  instance_class = "${var.db_cluster_instance_class}"
  instances = {
    one   = {}
    two   = {}
    three = {}
    four  = {}
  }

  vpc_id  = "${var.vpc_id}"
  subnets = "${var.subnets}"

  allowed_security_groups = "${var.allowed_security_groups}"
  allowed_cidr_blocks     = "${var.allowed_cidr_blocks}"

  storage_encrypted   = true
  apply_immediately   = true
  monitoring_interval = 10

  db_parameter_group_name         = "default"
  db_cluster_parameter_group_name = "default"

  enabled_cloudwatch_logs_exports = ["postgresql"]

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}
