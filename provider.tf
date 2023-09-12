terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true 
  features {}
  subscription_id = "c0445389-f027-4839-9cb5-4f80d5a6e034"

  client_id = "2b242b5e-87a9-48f8-b2e6-79cc0cb44456"
  client_secret = "~CO8Q~MSzpuq28keotedLHaj6JekdBlnNnn3PaFn"
  tenant_id = "2fc87606-f7b2-4dc1-81a0-71e4dd53584d"

}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "ResourceGroup-Release-A"
  location = "UK South"
}

