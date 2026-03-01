locals {
  # Etiquetas comunes para todos los recursos que las soportan.
  common_tags = {
    environment = "casopractico2"
  }
}

# Resource group base sobre el que cuelga toda la infraestructura.
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.common_tags
}
