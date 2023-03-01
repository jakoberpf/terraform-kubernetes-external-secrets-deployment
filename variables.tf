# Global
variable "name" {
  type        = string
  description = "The name of the deployment."
  default     = "external-secrets"
}

variable "namespace" {
  type    = string
  default = "external-secrets"
}

variable "compartment" {
  type        = string
  description = "The compartment the ressource is deployed with."
}

# Helm
variable "helm_chart_version" {
  type    = string
  default = "0.5.3"
}

# Backend - Vault
variable "vault_server" {
  type        = string
  description = "undefined"
}

variable "vault_token" {
  type        = string
  description = "undefined"
}
