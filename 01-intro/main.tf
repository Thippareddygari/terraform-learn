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
value = "Name is ${var.z.name} and age is ${var.z["age"]}"
}

#variables from anothe file
#tf vars manaully added meaning this files are loaded to command line by using -var-file option
#terraform apply -var-file="data.tfvars"
# or terraform apply -var="input=Hello world" or -var input=hello world
# or terraform apply -var-file="data.tfvars" -var="input=Hello world
variable "input" {}

output "input" {
  description = "value to be printed"
  value = var.input
}

#auto.tfvars file automatically loaded by terraform
variable "class" {}
output "class" {
  value = var.class
}

variable "trainer" {}
output "trainer" {
  value = var.trainer
}