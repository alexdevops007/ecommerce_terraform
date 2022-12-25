## Create Database Subnet Group
# terraform aws db subnet group
resource "aws_db_subnet_group" "database-subnet-group" {
  name        = "database subnets"
  subnet_ids  = [aws_subnet.private-subnet-3.id, aws_subnet.private-subnet-4.id]
  description = "Subnet for Database Instance"

  tags = {
    Name = "Database Subnets"
  }
}


## Get the Latest DB Snapshot
# terraform aws data db snapshot
resource "aws_db_snapshot" "latest-db-snapshot" {
  db_snapshot_identifier = var.database-snapshot-identifier
  db_instance_identifier = aws_db_instance.database-instance.id
}


## Create Database Instance Restored from Snapshots
# terraform aws db instance
resource "aws_db_instance" "database-instance" {
  allocated_storage      = 10
  engine                 = "mysql"
  name                   = "testdatabase"
  password               = "edmonton"
  username               = "foo"
  instance_class         = var.database-instance-class
  skip_final_snapshot    = true
  availability_zone      = data.aws_availability_zones.availability_zones.names[0]
  identifier             = var.database-instance-identifier
  db_subnet_group_name   = aws_db_subnet_group.database-subnet-group.name
  multi_az               = var.multi-az-deployment
  vpc_security_group_ids = [aws_security_group.database-security-group.id]
}