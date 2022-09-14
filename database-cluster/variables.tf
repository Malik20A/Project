variable "database_name" {
  type = string
  description = "Name for an automatically created database on cluster creation"
  default = "null"
}

variable "engine" {
  type = string
  description = "The name of the database engine to be used for this DB cluster. Defaults to aurora."
  default = "null"
}

variable "engine_version" {
  type = string
  description = "The database engine version. Updating this argument results in an outage."
  default = "null"
}
variable "db_cluster_instance_class" {
  type = string
  description = "The compute and memory capacity of each DB instance"
  default = "null"
}

