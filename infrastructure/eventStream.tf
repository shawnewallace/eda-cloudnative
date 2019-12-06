resource "azurerm_servicebus_namespace" "eda" {
  name                = "eda-sb-${var.environment}"
  location            = azurerm_resource_group.eda.location
  resource_group_name = azurerm_resource_group.eda.name
  sku                 = "Standard"
}

# events
resource "azurerm_servicebus_topic" "loggerEvent" {
  name                = "logger_event"
  resource_group_name = azurerm_resource_group.eda.name
  namespace_name      = azurerm_servicebus_namespace.eda.name

  enable_partitioning = true
}

resource "azurerm_servicebus_topic" "firstEvent" {
  name                = "first_event"
  resource_group_name = azurerm_resource_group.eda.name
  namespace_name      = azurerm_servicebus_namespace.eda.name

  enable_partitioning = true
}

resource "azurerm_servicebus_topic" "secondEvent" {
  name                = "second_event"
  resource_group_name = azurerm_resource_group.eda.name
  namespace_name      = azurerm_servicebus_namespace.eda.name

  enable_partitioning = true
}