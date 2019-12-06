resource "azurerm_servicebus_subscription" "firstEvent-logger" {
  name                = "logger"
  resource_group_name = azurerm_resource_group.eda.name
  namespace_name      = azurerm_servicebus_namespace.eda.name
  topic_name          = azurerm_servicebus_topic.firstEvent.name,
  forward_to = azurerm_servicebus_topic.loggerEvent.name
  max_delivery_count  = 1
} 