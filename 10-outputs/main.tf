locals {
  password = "verystrongpassword"
}

output "password" {
  value = local.password
}

output "sensitive_password" {
  value     = local.password
  sensitive = true
}