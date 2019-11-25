resource "azurerm_servicebus_namespace" "eda" {
  name                = "eda-sb-${var.environment}"
  location            = azurerm_resource_group.eda.location
  resource_group_name = azurerm_resource_group.eda.name
  sku                 = "Standard"
}