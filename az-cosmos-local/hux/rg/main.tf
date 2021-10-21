resource "azurerm_resource_group" "resource_groups" {
  for_each = var.resource_groups

  name     = var.resource_group_name
  location = var.az_location
  tags     = var.tags
}


