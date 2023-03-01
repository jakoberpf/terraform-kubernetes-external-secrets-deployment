resource "helm_release" "external_secrets" {
  name       = var.name
  repository = "https://charts.external-secrets.io"
  chart      = "external-secrets"
  version    = var.helm_chart_version
  namespace  = var.namespace

  set {
    name  = "replicaCount"
    value = "3"
  }

  set {
    name  = "leaderElect"
    value = "true"
  }

  set {
    name  = "installCRDs"
    value = "true"
  }

  depends_on = [
    kubernetes_namespace.external_secrets,
  ]
}
