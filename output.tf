output "rds_endpoint" {
  value = aws_db_instance.rds_instance.endpoint
}

output "rds_id" {
  value = aws_db_instance.rds_instance.id
}

output "rds_arn" {
  value = aws_db_instance.rds_instance.arn
}

output "security_group_id" {
  value = aws_security_group.rds_security_group.id
}

output "subnet_group_name" {
  value = aws_db_subnet_group.rds_subnet_group.name
}