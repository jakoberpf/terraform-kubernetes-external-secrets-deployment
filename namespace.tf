resource "kubernetes_namespace" "external_secrets" {
  metadata {
    annotations = {
      name = var.namespace
    }
    labels = {
      managed-by = var.compartment
    }
    name = var.namespace
  }
}
