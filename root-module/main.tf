module "vpc" {
  source = "../vpc-module"
  project_name = var.root_project_name
  cidr_block_prefix = "10.10"
  vpc_region = var.root_vpc_region
}

module "cluster" {
  source      = "../eks-module"
  project_name = var.root_project_name
  environment = var.root_environment
  k8s_version = var.root_k8s_version
  subnet_list = module.vpc.subnet_list
  ec2_types = var.root_ec2_types
  principal_arn = "arn:aws:iam::308082261316:user/admin"
}





# output "test" {
#   value = module.vpc.subnet_list
# }

# resource "aws_instance" "example" {
#   ami           = "ami-00a929b66ed6e0de6"
#   instance_type = "t3.micro"
#   subnet_id     = module.vpc.subnet_a
#   associate_public_ip_address = true
#   tags = {
#     Name = "HelloWorld"
#   }
# }

# resource "aws_db_instance" "default" {
#   allocated_storage    = 20
#   engine               = "mysql"
#   engine_version       = "8.4.7"
#   instance_class       = "db.t4g.micro"
#   username             = "admin"
#   parameter_group_name = "default.mysql8.4"
#   skip_final_snapshot  = true
#   storage_encrypted = true
#   max_allocated_storage = 1000
#   copy_tags_to_snapshot = true
#   monitoring_interval = 60
# }