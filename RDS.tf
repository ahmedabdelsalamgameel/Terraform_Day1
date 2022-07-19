resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db_subnet_group"
  subnet_ids = [module.network.pt1_sub_id, module.network.pt2_sub_id]
}


resource "aws_db_instance" "rds_instance" {
    allocated_storage = 5
    identifier = "rds-terraform"
    storage_type = "gp2"
    engine = "mysql"
    instance_class = "db.t3.micro"
    name = "test_db"
    username = "root"
    password = "1234"
    parameter_group_name = "default"
    publicly_accessible    = true
    skip_final_snapshot    = true
    tags = {
        Name = "RDS_Instance"
    }
}