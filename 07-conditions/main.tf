resource "local_file" "test" {
  filename = "/tmp/a.txt"
  content = var.content == null ? "null" : var.content
}

variable "content" {
  default = null
}