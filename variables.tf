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

variable "vault_server" {
  type        = string
  description = "undefined"
}

variable "vault_token" {
  type        = string
  description = "undefined"
}
