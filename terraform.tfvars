aws_region = "us-east-1"

vpc_id = "vpc-xxxxxxxx"

subnet_ids = [
  "subnet-0c5e176725ad7d1dc",
  "subnet-0ff0047ad217eba33"
]

subnet_group_name = "app-rds-subnet-group"

security_group_name = "app-rds-security-group"

db_identifier = "app-mysql"

allocated_storage = 20

storage_type = "gp3"

engine = "mysql"

engine_version = "8.0"

instance_class = "db.t3.micro"

db_name = "appdb"

username = "admin"

password = "Admin1234!"

parameter_group_name = "default.mysql8.0"

publicly_accessible = false

db_port = 3306

allowed_cidr_blocks = [
  "0.0.0.0/0"
]

tags = {
  Name        = "RDS"
  Environment = "dev"
}