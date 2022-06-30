resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version 
  instance_class       = var.instance_class 
  name                 = var.name  
  username             = var.username 
  password             = var.password 
  parameter_group_name = var.parameter_group_name 
  skip_final_snapshot  = var.skip_final_snapshot  
  db_subnet_group_name = aws_db_subnet_group.default.name
}

resource "aws_db_subnet_group" "default" {
  name       =var.subname 
  subnet_ids = var.subnet_ids

  tags = {
    Name = var.tag_Name 
  }
}