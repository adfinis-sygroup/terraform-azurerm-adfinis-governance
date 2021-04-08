
variable "beneficiary" {
  description = "Customer, company or employee for whom the resources will be deployed."
  type        = string
}

variable "billto" {
  description = "Billing contact in case it differs from the customer."
  type        = string
}

variable "billtype" {
  description = "Billing type, allowed values are appliance, none, sla, software_maintenance and vm."
  type        = string
}

variable "customer" {
  description = "Customer, company or employee for whom the resources will be deployed."
  type        = string
}

variable "environment" {
  description = "Infrastructure environment, allowed values are prod, stage, dev and test."
  type        = string
}

variable "location" {
  description = "Geograpical location where the resources are located, e.g. westeurope."
  type        = string
}

variable "origin" {
  description = "Creator (username or tool name) of the resources."
  type        = string
}

variable "owner" {
  description = "Owner or employee who is responsible for managing the resources."
  type        = string
}

variable "prefix" {
  description = "Resource prefix used for naming resources."
  default = {
    ip-configuration          = "ipconf"
    network-interface         = "nic"
    network-profile           = "netprofile"
    network-security-group    = "nsg"
    network-security-rule     = "nsr"
    os-disk                   = "osdisk"
    public-ip                 = "ip"
    resource-group            = "rg"
    subnet                    = "subnet"
    subscription              = "sb"
    virtual-machine           = "vm"
    virtual-machine-scale-set = "vmss"
    virtual-network           = "vnet"
  }
  type = map(string)
}

variable "purpose" {
  description = "Main use case such as the project or application name."
  type        = string
}

variable "realm" {
  description = "Governance realm to which the resources belong."
  type        = string
}

variable "serial" {
  description = "Two digit number (e.g. 01) to differentiate between multiple deployments."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to most resources that are deployed."
  default     = {}
  type        = map(string)
}

variable "type" {
  description = "Component type or name, e.g. web, database, master, etc."
  type        = string
}
