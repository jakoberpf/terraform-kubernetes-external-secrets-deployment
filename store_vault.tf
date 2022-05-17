data "kubectl_path_documents" "store_vault" {
  pattern = "${path.module}/kubernetes/store-vault.store.tpl"

  vars = {
    namespace = "external-secrets"
    server = var.vault_server
  }

  sensitive_vars = {
    server = var.vault_server
  }

  depends_on = [
    helm_release.external_secrets,
  ]
}

resource "kubectl_manifest" "store_vault" {
  yaml_body = data.kubectl_path_documents.store_vault.documents[0]
}

data "kubectl_path_documents" "store_vault_secret" {
  pattern = "${path.module}/kubernetes/store-vault.secret.tpl"

  vars = {
    namespace = "external-secrets"
    token = var.vault_token
  }

  sensitive_vars = {
    token = var.vault_token
  }

  depends_on = [
    helm_release.external_secrets,
  ]
}

resource "kubectl_manifest" "store_vault_secret" {
  yaml_body = data.kubectl_path_documents.store_vault_secret.documents[0]

  sensitive_fields = [
      "stringData.token"
  ]
}