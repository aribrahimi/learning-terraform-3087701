variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "ami_filter" {
  description = "Name Filter and Owner for AMI"

  type = object({
    name = string
    owner = string
  })

  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }
}

variable "environment" {
  description = "dev Environment"

  type = object({
    name = string
    network_prefix = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0" 
  }
}


variable "min_size" {
  description = "minimum number of a ASG"
  default = 1
}

variable "max_size" {
  description = "minimum number of a ASG"
  default = 1
}

