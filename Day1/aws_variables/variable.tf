variable "name" {
 type = list(string)
 default = [ "user1", "user2", "user3" ]
}

variable "instance_type" {
  description = "ec2 instance type"
  type = string
  default = "t2.micro"
}

variable "instance_count" {
  description = "no: of instances"
  type = number
  default = 1
}

variable "public_ip" {
  type = bool
  default = true
}

variable "tags" {
  type = map(string)
  default = {
    "Name" = "chess"
  }
}
