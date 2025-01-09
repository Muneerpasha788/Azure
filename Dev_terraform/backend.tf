terraform {
  backend "azurerm" {
    storage_account_name = "terraform127"
    container_name       = "muneer-az"
    key                  = "terraform.tfstate"
    access_key           = "dhf2dewFELgjfE8MCAa4pY9UUA8QwNP2ZtCYqJBsRqfay0T1GiUINcWD/dFQZ6ZyEXtvYS7RJvEL+AStfiZH1w=="
  }
}
