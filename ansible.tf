resource "aws_instance" "nexus"{
    ami=var.ami_id
    instance_type = var.instance_type_t3medium
    key_name = var.key_name
    security_groups = ["jenkins"]
    user_data = file("nexus.sh")
    tags={
        Name = "${var.ansible}-insatance"
    }
}