provider "azurerm" {
  features {}
}

# Criar Grupo de Recursos
resource "azurerm_resource_group" "server_rg" {
  name     = var.server_rg
  location = var.location
}

# Criar Virtual Network
resource "azurerm_virtual_network" "server_vnet" {
  name                = var.vnet_name
  address_space       = ["${var.vnet_address_space}"]
  location            = var.location
  resource_group_name = azurerm_resource_group.server_rg.name
}

# Criar a Subnet
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.server_rg.name
  virtual_network_name = azurerm_virtual_network.server_vnet.name
  address_prefixes     = ["${var.subnet_address_space}"]
}

