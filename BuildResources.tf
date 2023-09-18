# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = join("-", [var.environment, "ResourceGroup-Release", "manuallyfixed-update"])
  location = "UK South"
}

data "tfe_workspace" "ThisRepoWorkspace" {
  name         = terraform.workspace
  organization = "mehere"
}

data "github_repository" "ThisGHRepo" {
  full_name = data.tfe_workspace.ThisRepoWorkspace.vcs_repo[0].identifier
}

data "github_release" "latestGHRelease" {
  repository  = data.github_repository.ThisGHRepo.full_name
  owner       = "alexcfrench@gmail.com"
  retrieve_by = "latest"

}

output "vcsrepo" {
  value = data.tfe_workspace.ThisRepoWorkspace.vcs_repo[0].branch
}

output "fullname" {
  value = data.github_repository.ThisGHRepo.full_name
}
