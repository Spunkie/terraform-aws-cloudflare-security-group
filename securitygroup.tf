resource "aws_security_group_rule" "egress_ssh" {
  count             = var.enabled == "true" ? 1 : 0
  type              = "egress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = var.security_group_id
}
