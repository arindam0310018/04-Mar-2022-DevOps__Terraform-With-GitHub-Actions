terraform {
  backend "azurerm" {
    resource_group_name  = "tfpipeline-rg"
    storage_account_name = "tfpipelinesa"
    container_name       = "terraform"
    key                  = "GithubActions/tfyamlgithubv1-0.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.96"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}


resource "azurerm_resource_group" "rg1" {
  name     = "AM-RG-Github-1"
  location = "westeurope"
}

resource "azurerm_resource_group" "rg2" {
  name     = "AM-RG-Github-2"
  location = "westeurope"
}

resource "azurerm_resource_group" "rg3" {
  name     = "AM-RG-Github-3"
  location = "westeurope"
}

resource "azurerm_resource_group" "rg4" {
  name     = "AM-RG-Github-4"
  location = "westeurope"
}
