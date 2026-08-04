variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "centralindia"
}

variable "project_name" {
  description = "Short project identifier used in resource names"
  type        = string
  default     = "barathfoundation"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}