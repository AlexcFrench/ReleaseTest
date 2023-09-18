# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = join("-", [var.environment, "ResourceGroup-Release", "manuallyfixed-update"])
  location = "UK South"
}

data "tfe_workspace" "ThisRepoWorkspace" {
  name         = terraform.workspace
  organization = "mehere"
}

output "workspacename" {
  value = terraform.workspace
}

output "vcsrepo" {
  value = data.tfe_workspace.ThisRepoWorkspace.vcs_repo
}
/*
output "vcsblock1" {
  value = data.tfe_workspace.ThisRepoWorkspace.vcs_repo[branch]
}
*/
