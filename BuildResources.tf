# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = join("-", [var.environment, "ResourceGroup-Release", "manuallyfixed-update"])
  location = "UK South"
}

locals {
  workspace = terraform.workspace
}

output "workspace" {
  value = local.workspace
}
