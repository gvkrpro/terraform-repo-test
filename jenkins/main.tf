resource "aws_instance" "web" {
    ami                                  = "ami-03731a3df56f127c1"

    availability_zone                    = "ap-south-1b"
    instance_initiated_shutdown_behavior = "stop"
    instance_type                        = "t2.2xlarge"
    key_name                             = "myLap"
    security_groups                      = [
        "launch-wizard-4",
        "launch-wizard-5",
    ]
    subnet_id                            = "subnet-d7a1829b"
    tags                                 = {
        "Name" = "MyJenkins"
    }
    tags_all                             = {
        "Name" = "MyJenkins"
    }

    root_block_device {
        delete_on_termination = true
        encrypted             = false
        iops                  = 150
        volume_size           = 50
        volume_type           = "gp2"
    }

}

