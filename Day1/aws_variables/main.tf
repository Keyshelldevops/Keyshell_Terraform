resource "aws_instance" "example"{
    ami = "ami-026b57f3c383c2eec"
    instance_type = var.instance_type #t2.micro
    #count = var.instance_count #2
    associate_public_ip_address = var.public_ip #true

    #tags = {
    #    Name = "Terraform EC2"
    #}
    tags = var.tags
}


resource "aws_iam_user" "name" {
 count = length(var.name)
 name = var.name[count.index]
}
