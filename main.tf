terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "lab" {
  name = "LinuxTeste"
}

output "grupo_recursos" {
  value = data.azurerm_resource_group.lab.name
}

output "regiao" {
  value = data.azurerm_resource_group.lab.location
}
