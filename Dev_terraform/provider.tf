terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.47.0"
    }
  }
}
provider "azurerm" {
  features {}
  tenant_id       = "91783afb-7835-4583-bc44-53c84a20e00e"
  subscription_id = "ecd6e0a6-0b59-4f25-b4e0-d374d995357e"
  client_id       = "7ffdeeb8-2103-498a-b758-6b4d77b4691c"
  client_secret   = "Qw08Q~tgHvtguOVYAeirm.Z4BRwxLQGH1XaoEbvj"
}