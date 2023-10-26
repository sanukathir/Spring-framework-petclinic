variable "region"  {
   type = string
   default = "us-east-1"
}


variable "vpc_cidr" {
     type = string
     default = "10.10.0.0/16"
}


variable "environment" {
     type = string
     default = "PetClinic"
}



variable "availability_zones" {
      type  = list(string)
      default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "public_subnets_cidr" {
       type  = list(string)
        default = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

variable "private_subnets_cidr" {
     type  = list(string)
     default = ["10.10.11.0/24", "10.10.12.0/24", "10.10.13.0/24"]
}

variable "database_subnets_cidr" {
    type  = list(string)
     default = ["10.10.21.0/24", "10.10.22.0/24", "10.10.23.0/24"]
}

variable "elastic_subnets_cidr" {
    type  = list(string)
     default = ["10.10.31.0/24", "10.10.32.0/24", "10.10.33.0/24"]

}
variable "redshift_subnets_cidr" {
    type  = list(string)
     default = ["10.10.41.0/24", "10.10.42.0/24", "10.10.43.0/24"]

}

variable "ami_id" {
   type = string
   default ="ami-0fc5d935ebf8bc3bc"
   # default = "ami-0a72af05d27b49ccb" 
}

variable "instance_name" {
  default = "tf-instance"
  type    = string
}

#variable "key_pair_name" {
#  default = "tf-instance-key"
#  type    = string
#}

#variable "security_group_name_instance" {
#  default =  "my-instance-sec-group"
#  type    = string
#}

variable "instance_type" {
  default =  "t2.2xlarge"
  type    = string
}

variable "instance_count" {
  default =  1
  type    = number
}

variable "root_ebs_volume_size" {
  default =  50
  type    = number
}

variable "user_data_base64" {
  default = ""
  type    = string
}

variable "enable_terminate_protection" {
  default = false
  type    = bool
}

variable "keypair" {
  default = "spring-petclinic"
  type  = string
}
  
variable "security_group_petclinic" {
   default = "sg_petclinic"
    type  = string
}
