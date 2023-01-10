output "public_ip" {
   value = aws_instance.web.public_ip
}

output "private_ip" {
   value =aws_instance.web.private_ip
}
root@DESKTOP-1V19J76:/mnt/f/KEYSHELL/Keyshell_Terraform/Day2/aws_ec2_defVPC# cat variable.tf
variable "instance_type" {
   type = string
   default = "t2.micro"
}
variable "most_recent" {
  type = bool
  default = true
}
