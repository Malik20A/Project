variable "database_name" {
  type = string
  description = "Name for an automatically created database on cluster creation"
  default = "null"
}

variable "engine" {
  type = string
  description = "The name of the database engine to be used for this DB cluster. Defaults to aurora."
  default = ""
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
variable "allowed_security_groups" {
  type = list(string)
  description = "A list of Security Group ID's to allow access"
  default = []
}
variable "vpc_id" {
  type = string
  description = "ID of the VPC"
  default = ""
}
variable "allowed_cidr_blocks" {
  type = list(string)
  description = "list of cidr blocks allowed to access db"
  default = [ ]
}
variable "subnets" {
  type = list(string)
  description = "List of subnet IDS for DB"
  default = [ "" ]
}
