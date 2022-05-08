resource "kubernetes_namespace" "external_secrets" {
  metadata {
    annotations = {
      name = "external-secrets"
    }

    labels = {
      managed-by = var.compartment
    }

    name = "external-secrets"
  }
}

resource "helm_release" "external_secrets" {
  name       = "external-secrets"
  repository = "https://charts.external-secrets.io"
  chart      = "external-secrets"
  version    = "0.4.4"
  namespace  = "external-secrets"

  # set {
  #   name  = "replicaCount"
  #   value = "3"
  # }

  set {
    name  = "leaderElect"
    value = "true"
  }

  depends_on = [
    kubernetes_namespace.external_secrets,
  ]
}
