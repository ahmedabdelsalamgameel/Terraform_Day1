# resource "aws_db_instance" "rds_instance" {
#     allocated_storage = 5
#     identifier = "rds-terraform"
#     storage_type = "gp2"
#     engine = "mysql"
#     instance_class = "db.t2.micro"
#     name = "test_db"
#     username = "root"
#     password = "1234"
#     publicly_accessible    = true
#     skip_final_snapshot    = true
#     db_subnet_group_name = module.network.vpc_id

#     tags = {
#         Name = "RDS_Instance"
#     }
# }