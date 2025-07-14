provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" #the path to the kubectl config
  }
}

resource "helm_release" "nginx" {
  name       = "nginx"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  namespace  = "default"
}