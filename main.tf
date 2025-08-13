terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.4.2"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.33.1"
}


resource "minikube_cluster" "minikube_docker" {
  driver       = "docker"
  cluster_name = "pipeline-project"
  addons       = [
    "default-storageclass",
    "storage-provisioner"
  ]
}
