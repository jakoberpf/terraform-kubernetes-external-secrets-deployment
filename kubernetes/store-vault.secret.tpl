---
apiVersion: v1
kind: Secret
metadata:
  name: vault-token
  namespace: ${namespace}
type: Opaque
stringData:
  token: ${token}
