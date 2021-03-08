# terraform-gcp-network

[![Build Status](https://github.com/JamesWoolfenden/terraform-gcp-network/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-gcp-network)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-gcp-network.svg)](https://github.com/JamesWoolfenden/terraform-gcp-network/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

make net and sub net with secondary range if supplied

```terraform
module "network" {
  source      = "JamesWoolfenden/network/gcp"
  version     = "0.0.2"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [google_compute_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) |
| [google_compute_subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| ip\_cidr\_range | n/a | `string` | n/a | yes |
| name | n/a | `string` | n/a | yes |
| project | n/a | `string` | n/a | yes |
| region | n/a | `string` | n/a | yes |
| secondary\_ip\_range | n/a | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| subnet | n/a |
| vpc | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-gcp-network/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-gcp-network/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-gcp-network&url=https://github.com/JamesWoolfenden/terraform-gcp-network
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-gcp-network&url=https://github.com/JamesWoolfenden/terraform-gcp-network
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-gcp-network
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-gcp-network
[share_email]: mailto:?subject=terraform-gcp-network&body=https://github.com/JamesWoolfenden/terraform-gcp-network
