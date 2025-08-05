module "null_res_mod" {
  source = "./null-res-module"
}

module "null_res_count" {
  source = "./null-res-count"
  input = module.null_res_mod.null_res_out
}