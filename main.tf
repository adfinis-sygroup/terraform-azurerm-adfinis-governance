
locals {
  beneficiary = var.beneficiary
  billto      = var.billto
  billtype    = var.billtype
  customer    = var.customer
  environment = var.environment
  location    = var.location
  origin      = var.origin
  owner       = var.owner
  purpose     = var.purpose
  realm       = var.realm
  serial      = var.serial

  tags = {
    billto      = var.billto
    billtype    = var.billtype
    customer    = var.customer
    environment = var.environment
    origin      = var.origin
    owner       = var.owner
    realm       = var.realm
    type        = var.type
  }

  type = var.type
}

locals {
  ip_configuration          = "${var.prefix["ip-configuration"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  os_disk                   = "${var.prefix["os-disk"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  public_ip                 = "${var.prefix["public-ip"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  network_interface         = "${var.prefix["network-interface"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  network_profile           = "${var.prefix["network-profile"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  network_security_group    = "${var.prefix["network-security-group"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  network_security_rule     = "${var.prefix["network-security-rule"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  resource_group            = "${var.prefix["resource-group"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  subscription              = "${var.prefix["subscription"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  subnet                    = "${var.prefix["subnet"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
  virtual_machine           = "${var.prefix["virtual-machine"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.type}-${var.serial}"
  virtual_machine_scale_set = "${var.prefix["virtual-machine-scale-set"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.type}-${var.serial}"
  virtual_network           = "${var.prefix["virtual-network"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.serial}"
}

locals {
  computer_name        = "${var.prefix["virtual-machine"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.type}-${var.serial}"
  computer_name_prefix = "${var.prefix["virtual-machine"]}-${var.beneficiary}-${var.purpose}-${var.environment}-${var.location}-${var.type}-"
}
