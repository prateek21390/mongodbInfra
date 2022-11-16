module "ec2-mongodb" {
    source                    = "../secondary"
    key_name                  = "ohioKey"
    iam_instance_profile      = "ec2role"
    mongo_version             = "4.4"
    # count                     = "3"
    # ip_1                      = "module.ec2-mongodb.private_ip_replica_1"

    security_groups           = ["sg-037da081915f5f32b"]
    subnet_id                 = "subnet-06e2976ddb98efd61"
    project_name_prefix       = "dev-tothenew"
    common_tags               = {
      "Project"     = "ToTheNew",
      "Environment" = "dev"
    }
}
module "ec2-mongodb-primary" {
    source                    = "../primary"
    key_name                  = "ohioKey"
    iam_instance_profile      = "ec2role"
    mongo_version             = "4.4"
    # count                     = "3"
    # ip_1                      = output.private_ip_replica_1
    # ip_2                      = output.private_ip_replica_2
    security_groups           = ["sg-037da081915f5f32b"]
    subnet_id                 = "subnet-06e2976ddb98efd61"
    project_name_prefix       = "dev-tothenew-primary"
    common_tags               = {
      "Project"     = "ToTheNew",
      "Environment" = "dev"
    }
}
