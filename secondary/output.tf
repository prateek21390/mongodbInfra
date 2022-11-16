output "private_ip_replica_1" {
    value = "${aws_instance.ttn.0.private_ip}"
}
output "private_ip_replica_2" {
    value = "${aws_instance.ttn.1.private_ip}"
}

output "id" {
    value = aws_instance.ttn.*.id
}

output "arn" {
    value = aws_instance.ttn.*.arn
}

output "public_ip" {
    value = aws_instance.ttn.*.public_ip
}