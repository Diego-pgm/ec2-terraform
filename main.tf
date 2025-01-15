resource "aws_instance" "my_instance" {
    ami = "ami-046d7944dd9e73a61"
    instance_type = "t2.micro"
    tags = {
        Name = "test01"
    }
    security_groups = [aws_security_group.test-sg.name]
}

resource "aws_security_group" "test-sg" {
    name = "test-sg"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}