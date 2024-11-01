resource "aws_db_instance" "postgres" {
  identifier              = "pas-postgres"
  allocated_storage       = 20  # Adjusted for production
  max_allocated_storage   = 100 # Enables storage autoscaling up to 100GB
  engine                  = "postgres"
  engine_version          = "13"
  instance_class          = "db.t3.micro" 
  username                = "postgres"
  password                = var.db_password
  vpc_security_group_ids  = [aws_security_group.rds_sg.id]
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  storage_encrypted       = true # Enables encryption
  multi_az                = true # Enables high availability (optional)
  skip_final_snapshot     = true
  iam_database_authentication_enabled = true # Optional: Enables IAM authentication
}
