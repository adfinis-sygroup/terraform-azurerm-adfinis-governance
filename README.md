# Terraform Module - Azure Adfinis Governance

Terraform Module for providing the basic variables and resources of the Adfinis
Azure governance and standards.

This module also provides names for all resources on Azure based on the internal
conventions. For example the variable `resource_group` is predefined based
on the naming schema and the defined standard variables:

```
resource_group = "${var.prefix["resource-group"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
```

Which will result in the below value assignment:

```
resource_group = rg-adsy-consul-test-westeurope-01
```

## Requirements

This module requires Terraform >= 0.12.

## Usage

```
module "adfinis-governance" {
  source = "git::ssh://git@github.com:adfinis-sygroup/terraform-azurerm-adfinis-governance.git"

  beneficiary = "adfinis"
  billto      = "clarkkent"
  billtype    = "none"
  customer    = "adfinis"
  environment = "test"
  location    = "westeurope"
  origin      = "brucewayne"
  owner       = "brucewayne"
  purpose     = "consul"
  realm       = "testing"
  serial      = "01"
  type        = "infra"
}

resource "azurerm_resource_group" "rg" {
  name     = module.adfinis-governance.resource_group
  location = module.adfinis-governance.location
  tags     = module.adfinis-governance.tags
}
```

## Variables

See the [variables](./variables.tf) file.

## Contributing

Contributions are more than welcome! Please feel free to open new issues or
pull requests.

## License

See the [LICENSE](LICENSE) file.
