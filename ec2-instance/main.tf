resource "aws_instance" "web" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = "ap-south-1a"
  key_name          = var.key_name
  security_groups   = [data.aws_security_group.default.name]

  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_ebs_volume" "example" {
  availability_zone = "ap-south-1a"
  size              = 10

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.web.id
}
