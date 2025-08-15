module "mysql_sg" {
   # source = "../terraform-aws-securitygroup"
   # source = "git::https://github.com/ShivaKrishna44/terraform-aws-vpc1.git?ref=main"
     source = "git::https://github.com/ShivaKrishna44/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "Created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
}