//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "network_host" {
  source  = "app.terraform.io/AWSDemoDarnoldTFE/network-host/aws"
  version = "2.2.0"

  instance_type = "m4.large"
  network_ws = "ConfigDesigner"
  organization = "AWSDemoDarnoldTFE"
  private_instances = 2
}

module "network" {
  source  = "app.terraform.io/AWSDemoDarnoldTFE/network/aws"
  version = "3.0.8"

  availability_zones = "us-east-1a"
  key_name = "tfe-demos-darnold"
  network_name = "ConfigDesigner"
  region = "us-east-1"
}
