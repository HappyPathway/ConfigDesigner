//--------------------------------------------------------------------
// Modules
module "network_host" {
  source  = "app.terraform.io/AWSDemoDarnoldTFE/network-host/aws"
  version = "2.2.0"

  instance_type = "m4.large"
  network_ws = "Network"
  organization = "AWSDemoDarnoldTFE"
  private_instances = 1
}
