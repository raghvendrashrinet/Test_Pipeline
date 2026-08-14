terraform{
    required_providers{
        azurerm = {
            source ="hashicorp/azurerm"
            version="5.0.0"
        }
    }
}

provider "azurerm" {
    features {
         resource_group {
      # This turns off the safety check and forces the deletion of nested resources
      prevent_deletion_if_contains_resources = false
    }
    }
}