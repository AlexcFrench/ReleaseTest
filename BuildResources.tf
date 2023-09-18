# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = join("-", [var.environment, "ResourceGroup-Release", "manuallyfixed-update"])
  location = "UK South"
  tags = {
    "Release Version" = data.github_release.latestGHRelease.release_tag
  }
}

data "tfe_workspace" "ThisRepoWorkspace" {
  name         = terraform.workspace
  organization = "mehere"
}

data "github_repository" "ThisGHRepo" {
  full_name = data.tfe_workspace.ThisRepoWorkspace.vcs_repo[0].identifier
}

locals {
  GHowner = split("/", data.github_repository.ThisGHRepo.full_name)
}

data "github_release" "latestGHRelease" {
  repository  = local.GHowner[1]
  owner       = local.GHowner[0]
  retrieve_by = "latest"

}

output "vcsrepo" {
  value = data.tfe_workspace.ThisRepoWorkspace.vcs_repo[0].branch
}

output "fullname" {
  value = data.github_repository.ThisGHRepo.full_name
}

output "release_tag" {
  value = data.github_release.latestGHRelease.release_tag
}
