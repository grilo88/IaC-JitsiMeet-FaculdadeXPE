module "meet" {
  source            = "../../modules/meet"
  region            = var.region
  access_key        = var.access_key
  secret_key        = var.secret_key
  project           = var.meet_project
  domain            = var.domain
  subdomain         = var.meet_subdomain
  base_ami_id       = var.meet_base_ami_id
  web_instance_type = var.meet_web_instance_type
}

module "route-meet-to-sa-east-1" {
  source            = "../../modules/route-to-sa-east-1"
  region            = var.region
  access_key        = var.access_key
  secret_key        = var.secret_key
  meet_project      = var.meet_project
  domain            = var.domain
  meet_subdomain    = var.meet_subdomain
  meet_base_ami_id  = var.meet_base_ami_id
  meet_web_instance_type = var.meet_web_instance_type
  aws_lb_app_lb_dns_name = module.meet.aws_lb_app_lb_dns_name
  aws_lb_app_lb_zone_id = module.meet.aws_lb_app_lb_zone_id
}