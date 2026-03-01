# Registry privado donde se publican las imagenes usadas por la VM y por AKS.
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  # Se habilita el usuario admin para simplificar el ejercicio.
  admin_enabled = true
  tags          = local.common_tags
}
