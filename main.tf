data "external" "ssm" {
  program = ["sh", "${path.module}/scripts/get-ssm.sh"]
  query = {
    ssm_key       = var.ssm_key
    default_value = var.ssm_default_value
  }
}