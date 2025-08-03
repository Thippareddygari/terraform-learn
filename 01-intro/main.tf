provider "local" {
  
}

resource "local_file" "foo" {
  content = "Hello, World!"
  filename= "/tmp/hello.txt"  
}

# normal variable declaration
variable "x" {
default = 10
}

#print output
output "x_value" {
    value = var.x
}

output "x_value" {
    value = "value of x ${var.x}" 
}

