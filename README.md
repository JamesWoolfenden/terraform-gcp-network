# terraform-gcp-network

make net and sub net with secondary range if supplied

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common\_tags | This is to help you add tags to your cloud objects | map | n/a | yes |
| ip\_cidr\_range |  | string | n/a | yes |
| name |  | string | n/a | yes |
| project |  | string | n/a | yes |
| region |  | string | n/a | yes |
| secondary\_ip\_range |  | string | `"null"` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
