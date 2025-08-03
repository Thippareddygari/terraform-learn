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

#combination of strings use "${var.x}"
output "x_value1" {
    value = "value of x ${var.x}" 
}

#List variable declaration
variable "y" {
  default = ["a","1","0.3","true"]
}

#List output
output "y_value" {
    value = var.y[0]
}

#Map variable declaration
variable "z" {
    default = {
        "name" = "kishor reddy"
        "age"  = 30
        "city" = "hyderabad"
    } 
}

#Map output
output "z_value" {
value = "Name is ${var.z.name} and age is ${var.z[age]}"
}
