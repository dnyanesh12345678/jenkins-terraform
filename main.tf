resource "aws_instance" "my_instance" {
ami = "ami-0851b76e8b1bce90b"
instance_type = "t2.micro"
key_name = "ansible"
count = length(var.tags)
tags ={
Name = element(var.tags, count.index)
}
}

