/*output "vpc_id" {
  value=aws_vpc.main.id
}
output"subnet_id" {
  value=aws_subnet.main.id
}*/
output "inatance_id" {
  value= aws_instance.main.id
}
# output "instance_tomcat_id" {
#   value = aws_instance.tomcat.id
# }
output "public_ip" {
  value= aws_instance.main.public_ip
}
# output "private_ip" {
#   value= aws_instance.private_ip
# }
output "public_tomcat_ip" {
  value= aws_instance.tomcat.public_ip
}
output "private_tomcat_ip" {
  value= aws_instance.tomcat.private_ip
}
output "public_nexus_ip" {
  value= aws_instance.nexus.public_ip
}
output "private_nexus_ip" {
  value= aws_instance.nexus.private_ip
}