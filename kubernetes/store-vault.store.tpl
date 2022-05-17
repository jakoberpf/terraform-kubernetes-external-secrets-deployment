 ---
apiVersion: external-secrets.io/v1beta1
kind: ClusterSecretStore
metadata:
  name: vault-backend
  namespace: ${namespace}
spec:
  provider:
    vault:
      server: "${server}"
      path: "kubernetes-secrets"
      version: "v2"
      auth:
        tokenSecretRef:
          name: vault-token
          namespace: ${namespace}
          key: token