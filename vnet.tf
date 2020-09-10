
module "network" {
  source = "app.terraform.io/stigh-training/network/azurerm"
  version = "2.0.0"
  location = "centralus"
  resource_group_name = stigh-workshop
  address_space       = "10.2.0.0/16"
  subnet_prefixes     = ["10.2.1.0/24", "10.2.2.0/24", "10.2.3.0/24"]
  subnet_names        = ["subnet3", "subnet4", "subnet5"]

  tags = {
    environment = "dev"
    costcenter  = "it"
  }

}