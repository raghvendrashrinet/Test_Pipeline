resource "azurerm_resource_group" "rg" {
    name= var.rg_name
    location = var.location 
}

output "rg_id" {
    value = azurerm_resource_group.rg.id
      
    }
  
resource "azurerm_virtual_network" "vnet-1" {
    resource_group_name = azurerm_resource_group.rg.name
    name = "vnet1"
    location = var.location
    address_space = ["10.0.0.0/16"]
}

