�r�^�f��ئ{N�y�'vî���variable "subscription_id" {
  description = "Azure subscription ID used for the deployment."
  type        = string
  sensitive   = true
}

variable "project_name" {
  description = "Short lowercase name used in resource names. Use only letters and numbers."
  type        = string
  default     = "barathcloud"

  validation {
    condition     = can(regex("^[a-z0-9]{3,15}$", var.project_name))
    error_message = "project_name must contain 3 to 15 lowercase letters or numbers."
  }
}

variable "location" {
  description = "Azure region for all resources."
  type        = string
  default     = "centralindia"
}

variable "environment" {
  description = "Environment tag and naming suffix."
  type        = string
  default     = "dev"
}

variable "vnet_address_space" {
  description = "CIDR address space for the virtual network."
  type        = string
  default     = "10.20.0.0/16"
}

variable "application_subnet_prefix" {
  description = "CIDR address prefix for the application subnet."
  type        = string
  default     = "10.20.1.0/24"
}

variable "management_subnet_prefix" {
  description = "CIDR address prefix for the management subnet."
  type        = string
  default     = "10.20.2.0/24"
}

variable "deploy_vm" {
  description = "Whether to deploy the optional private Linux VM. Leave false while learning to avoid compute cost."
  type        = bool
  default     = false
}

variable "admin_username" {
  description = "Administrator username for the optional Linux VM."
  type        = string
  default     = "azureadmin"
}

variable "admin_ssh_public_key" {
  description = "SSH public key for the optional Linux VM. Required only when deploy_vm is true."
  type        = string
  default     = ""
  sensitive   = true

  validation {
    condition     = var.deploy_vm == false || startswith(var.admin_ssh_public_key, "ssh-")
    error_message = "When deploy_vm is true, admin_ssh_public_key must be a valid SSH public key beginning with ssh-."
  }
}

variable "tags" {
  description = "Additional tags applied to all resources."
  type        = map(string)
  default     = {}
}
