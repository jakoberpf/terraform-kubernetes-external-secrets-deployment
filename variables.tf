# Global
variable "name" {
  type        = string
  description = "The name of the deployment."
  default     = "external-secrets"
}

variable "compartment" {
  type        = string
  description = "The compartment the ressource is deployed with."
}
