provider "local" {
  
}

resource "local_file" "foo" {
  content = "Hello, World!"
  filename= "/tmp/hello.txt"  
}