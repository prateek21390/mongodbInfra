variable "subnet_id" {
    description = "The VPC Subnet IDs to launch in"
    type        = string
}
variable "count_ec2" {
    description = "The EC2 count"
    type        = number
    default     = 2
}

variable "instance_type" {
    description = "The type of instance to start"
    type        = string
    default     = "t3a.medium"
}

variable "project_name_prefix" {
    description = "A string value to describe prefix of all the resources"
    type        = string
    default     = "dev-tothenew"
}

variable "iam_instance_profile" {
    description = "IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile"
    type        = string
}

variable "key_name" {
    description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
    type        = string
    default = "ohiokey"


}

variable "disable_api_termination" {
    description = "If true, enables EC2 Instance Termination Protection"
    type        = bool
    default     = true
}

variable "ebs_optimized" {
    description = "If true, the launched EC2 instance will be EBS-optimized"
    type        = bool
    default     = true
}

variable "security_groups" {
    description = "A string value for Security Group ID"
    type        = list(string)

}

variable "common_tags" {
    description = "A mapping of tags to assign to the resource"
    type        = map(string)
}

variable "delete_on_termination" {
    description = "Whether EBS volume will be deleted when instance gets deleted."
    type        = bool
    default     = true
}

variable "encrypted" {
    description = "Whether EBS volume will be encrypted."
    type        = bool
    default     = true
}

variable "volume_type" {
    description = "Volume type for EC2 instance default latest type"
    type        = string
    default     = "gp3"
}

variable "root_volume_size" {
    description = "Root volume size of the EC2 instance"
    type        = number
    default     = 50
}

variable "disable_api_stop" {
    description = "If true, enables EC2 Instance Stop Protection."
    type        = bool
    default     = false
}

variable "source_dest_check" {
    description = "Source destination Check. Used for NAT or VPNs."
    type        = bool
    default     = true
}
# variable "ip_1" {
#     type        = string
    
# }
# variable "ip_2" {
#     type           =  string
# }
