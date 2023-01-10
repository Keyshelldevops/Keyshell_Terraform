# terraform {
#    backend "s3" {
#      bucket = "terraform-backend-keyshell"
#      key = "terraform.tfstate"
#      region = "us-east-1"
#      dynamodb_table = "terraform"
#    }
# }


resource "aws_instance" "example"{
    ami = "ami-026b57f3c383c2eec"
    instance_type = var.instance_type
    associate_public_ip_address = var.public_ip

    tags = var.tags
}

resource "aws_iam_user" "name" {
  count = length(var.name)
  name = var.name[count.index]
}
