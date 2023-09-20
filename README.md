# ReleaseTest
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >3.0.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.48.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.72.0 |
| <a name="provider_github"></a> [github](#provider\_github) | 5.37.0 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.48.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [github_release.latestGHRelease](https://registry.terraform.io/providers/hashicorp/github/latest/docs/data-sources/release) | data source |
| [github_repository.ThisGHRepo](https://registry.terraform.io/providers/hashicorp/github/latest/docs/data-sources/repository) | data source |
| [tfe_workspace.ThisRepoWorkspace](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/workspace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fullname"></a> [fullname](#output\_fullname) | n/a |
| <a name="output_release_tag"></a> [release\_tag](#output\_release\_tag) | n/a |
| <a name="output_vcsrepo"></a> [vcsrepo](#output\_vcsrepo) | n/a |
<!-- END_TF_DOCS -->
