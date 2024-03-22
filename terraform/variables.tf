variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "project" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
  validation {
    condition     = contains(["prod", "dev", "qa", "testing", "uat"], var.environment)
    error_message = "Valid values for var: environment are prod, dev, qa, testing, uat"
  }
}

variable "credentials_profile" {
  description = "AWS credentials profile"
  type        = string
  default     = "default"
}

variable "access_key" {
  description = "AWS access key"
  type        = string
}

variable "secret_key" {
  description = "AWS secret access key"
  type        = string
}