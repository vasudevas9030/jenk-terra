resource "aws_instance" "main" {
    ami=var.ami_id
    instance_type = var.instance_type_t3medium
    key_name = var.key_name
    security_groups = ["jenkins"]
    root_block_device {
      volume_size = "10"
      volume_type = "gp3"
    }
    user_data = file("./jenk.sh")
    tags={
        Name = "${var.prefix}-insatance"
    }
}
