resource "null_resource" "example" {}

resource "null_resource" "example2" {}

output "workspace" {
  value = terraform.workspace
}