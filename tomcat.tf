resource "aws_instance" "tomcat" {
    ami=var.ami_id
    instance_type = var.instance_type_t2micro
    key_name = var.key_name
    security_groups = ["jenkins"]
    user_data = file("tomcat.sh")
    tags={
        Name = "${var.tomcat}-insatance"
    }
}