
variable "existent_resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "location" {
  type = string
  default = "West Europe"
}


variable "owner_tag" {
  type = string
  description = "El propietario de la VNet"
}

variable "environement_tag" {
  default = "env,pro,tes,pre"
  type    = string
  description = "Entorno de la VNet"
}


variable "vnet_tags" {
  type = map(string)
  default = {}
  description = "Tags adicionales de la VNet"
}


  variable "namessubnet" {
    type = string
    description = "The name of the subnet"
  }

  variable "namessubnet2" {
    type = string
    description = "The name of the subnet"
  }


  variable "resource_group_name" {
    type = string
    description = "The name of the resource group in which to create the subnet."

  }

  variable "virtual_network_name" {
    type = string
    description = "The name of the virtual network to which to attach the subnet"
  }

  variable "address_prefixes" {
    type = list(string)
    description = "The address prefixes to use for the subnet."
  }

  variable "address_prefixes2" {
    type = list(string)
    description = "The address prefixes to use for the subnet."
  }
