module "null-resorces" {
  source = "./null-res-modules"
}

module "resource-count" {
  source = "./resource-count"
  input = module.null-resorces.resources
}