variable "server_rg" {
  description = "Nome do Grupo de Recursos"
  default     = "RG-Servidores02"
}

variable "location" {
  description = "Localização que os recursos serão criados"
  default     = "EastUS"
}

variable "vnet_name" {
  description = "Nome da virtual network"
  default = "Vnet-servidores02"
}

variable "vnet_address_space" {
  description = "Endereço IP da Virtual Network"
  default     = "10.0.0.0/16"

}

variable "subnet_name" {
  description = "Nome da Subnet"
  default     = "subnet-servidores02"
}

variable "subnet_address_space" {
  description = "Endereço IP da subnet"
  default     = "10.0.2.0/24"
}

