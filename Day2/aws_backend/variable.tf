variable "instance_type" {
  description = "ec2 instance type"
  type = string
  default = "t2.micro"
}

variable "public_ip" {
  description = "Public IP value"
  type = bool
  default = true
}

variable "name" {
  type = list(string)
  default = [ "user1", "user2", "user3" ]
}

variable "tags" {
  type = map(string)
  default = {
    "Name" = "chess"
  }
}
