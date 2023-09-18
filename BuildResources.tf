# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = join("-", [var.environment, "ResourceGroup-Release", "duff-update"])
  location = "UK South"
}
