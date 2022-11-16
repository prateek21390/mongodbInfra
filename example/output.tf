# output "private_ip_replica_1" {
#     # value = aws_instance.ttn.count.index[0].private_ip
#     value = ["${aws_instance.ttn.*.private_ip}"]
# }

# output "private_ip_replica_2" {
#     value = aws_instance.ttn.1.private_ip
# }
output "private_ip_replica_1" {
    # value = module.ec2-mongodb.private_ip   
    value = module.ec2-mongodb.private_ip_replica_1
}
output "private_ip_replica_2" {
    # value = module.ec2-mongodb.private_ip   
    value = module.ec2-mongodb.private_ip_replica_2
}
# output "public" {
#   value = module.ec2-mongodb-primary.private_master
# }