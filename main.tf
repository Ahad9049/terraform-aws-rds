
#subnet group
resource "aws_db_subnet_group" "rds_subnet_group" {
  name        = "app-rds-subnet-group"
  description = "Subnet group for RDS instance"
  subnet_ids  = ["subnet-0ff0047ad217eba33", "subnet-0c5e176725ad7d1dc"]
  tags        = var.tags
}
#security group
resource "aws_security_group" "rds_security_group" {
  name        = "app-rds-security-group"
  description = "Security group for RDS instance"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.db_port
    to_port     = var.db_port
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.tags
}
#RDS MYSQL INStance
resource "aws_db_instance" "rds_instance" {
  allocated_storage      = var.allocated_storage
  storage_type           = var.storage_type
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  parameter_group_name   = var.parameter_group_name
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_security_group.id]
  skip_final_snapshot    = true
  publicly_accessible    = var.publicly_accessible
  tags                   = var.tags
}

