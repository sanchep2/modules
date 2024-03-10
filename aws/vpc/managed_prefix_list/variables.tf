# Define the module inputs
variable "name" {
  type = string
  description = "Name of the AWS managed prefix list"
}

variable "max_entries" {
  description = "Maximum number of entries in the prefix list"
  type        = number
}

variable "cidr_blocks" {
  type = list(any)
  description = "List of CIDR blocks for the prefix list entries"
}

variable "entry_descriptions" {
  type        = list(string)
  description = "List of descriptions for each CIDR block entry"
}

variable "tags" {
  description = "Tags to apply to the EC2 managed prefix list"
  type        = map(string)
}