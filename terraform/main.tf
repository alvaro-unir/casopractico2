terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # Provider principal para crear recursos en Azure.
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

    # Se usa para generar el par de claves SSH de la VM.
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  # Se parametriza para no dejar datos de suscripcion fijos en el codigo.
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
