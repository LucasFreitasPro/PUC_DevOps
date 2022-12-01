resource "aws_efs_file_system" "this" {
  encrypted = true
  tags = merge(
    {
      Name = "${local.prefix}-efs"
    },
    local.commom_tags
  )
}

resource "aws_efs_mount_target" "this" {
  file_system_id  = aws_efs_file_system.this.id
  subnet_id       = aws_subnet.this.id
  security_groups = [aws_security_group.sg-ssh-http.id]
}