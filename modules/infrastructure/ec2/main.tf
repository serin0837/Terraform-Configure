resource "aws_instance" "kube-vm" {
   ami                         = "${var.ami_id}"
   key_name                    = "jenkins"
   instance_type               = "t2.medium"
   subnet_id                   = "${var.public_subnet_id}"
   associate_public_ip_address = true

 tags = {
    Name = "${var.environment}-${var.region}-kube-vm"
  }
}
resource "aws_instance" "jenkin" {
   ami                         = "${var.ami_id}"
   key_name                    = "sigma"
   instance_type               = "t2.medium"
   subnet_id                   = "${var.private_subnet_id}"
   associate_public_ip_address = true

 tags = {
    Name = "${var.environment}-${var.region}-jenkins"
  }
}
