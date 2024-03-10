# Outputs for the managed prefix list
output "arn" {
  value = aws_ec2_managed_prefix_list.ec2_managed_prefix_list.arn
  description = "ARN of the managed prefix list"
}

output "id" {
  value = aws_ec2_managed_prefix_list.ec2_managed_prefix_list.id
  description = "ID of the managed prefix list"
}