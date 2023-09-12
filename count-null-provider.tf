variable "condition" {
  default = true
}
resource "null_resource" "screen_output" {
#triggers = {
#time = timestamp ()
#}
count = var.condition?1 : 3
  provisioner "local-exec" {
    command = <<EOT
    gcloud version
    EOT
  }
}
#######12312313231
