output "vpc-id" {
    value = aws_vpc.myvpc.id

}
output "subnet-id1" {
    value = aws_subnet.public-subnet.id

}
output "subnet-id2" {
    value = aws_subnet.private-subnet.id

}
output "security-group1-id" {
    value = aws_security_group.allow_all_ports.id
}
output "security-group2-id" {
    value = aws_security_group.allow_port-3000.id
}