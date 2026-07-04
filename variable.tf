variable "aws_region" {}

variable "vpc_id" {}

variable "subnet_ids" {
  type = list(string)
}

variable "subnet_group_name" {}

variable "security_group_name" {}

variable "db_identifier" {}

variable "allocated_storage" {
  type = number
}

variable "storage_type" {}

variable "engine" {}

variable "engine_version" {}

variable "instance_class" {}

variable "db_name" {}


variable "parameter_group_name" {}

variable "publicly_accessible" {
  type = bool
}

variable "db_port" {
  type = number
}

variable "allowed_cidr_blocks" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}