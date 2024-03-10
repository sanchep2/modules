# Resource definition for the managed prefix list
resource "aws_ec2_managed_prefix_list" "ec2_managed_prefix_list" {
  name           = var.name
  address_family = "IPv4"
  max_entries    = var.max_entries

  dynamic "entry" {
      for_each = var.cidr_blocks

      content {
        cidr = entry.value
        description = var.entry_descriptions[index(var.cidr_blocks, entry.value)]
      }
  }

  tags = var.tags

}