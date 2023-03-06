# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}


# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "rkdilnathVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

#inputing variable

#resource "azurerm_resource_group" "rg" {
#  name     = var.rkdilnath2
#  location = "westus2"

#  tags = {
#    Environment = "Terraform Getting Started 2"
#    Team        = "DevOps 2"
#  }
#}


#variable "rkdilnath2" {
#  default = "ResourceGroup2"
#}


#2
resource "azurerm_resource_group" "rg" {
  name     = var.rkdilnath3
  location = "westus2"

  tags = {
    Environment = "Terraform Getting Started 3"
    Team        = "DevOps 2"
  }
}

variable "rkdilnath3" {
  default = "ResourceGroup3"
}

output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

