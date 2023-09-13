terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {  
  host = "unix:///var/run/docker.sock" 
}

#resource "docker_image" "ansible_image" {
#name = "ansible_image"
#keep_locally = true
#}

resource "docker_container" "ansible_container" {
  image = "ansible_image:latest"
  name = "ansible_container"
  
  ports {
    internal = 22
    external = 2222
  }
  volumes {
    host_path      = "${path.cwd}/id_rsa.pub"
    container_path = "/root/.ssh/authorized_keys"
  }
}
