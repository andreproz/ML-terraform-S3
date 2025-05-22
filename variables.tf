variable "yc_token" {
  description = "Yandex Cloud IAM token"
  type        = string
  sensitive   = true
  default     = null
  // я пользовался IAM-токеном для сервисного аккаунта
}

variable "yc_cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
  default     = null
}

variable "yc_folder_id" {
  description = "Yandex Cloud Folder ID"
  type        = string
  default     = null
}

variable "bucket_name_prefix" {
  description = "Prefix for the S3 bucket name"
  type        = string
  default     = "ml-mai-bucket"
}

variable "bucket_acl" {
  description = "Access control list for the S3 bucket"
  type        = string
  default     = "private"
  validation {
    condition     = contains(["private", "public-read", "public-read-write", "authenticated-read"], var.bucket_acl)
    error_message = "Allowed values for ACL: private, public-read, public-read-write, authenticated-read"
  }
}

variable "default_tags" {
  description = "Default tags to apply to the bucket"
  type        = map(string)
  default = {
    Environment = "development"
    Project     = "ml-mai-project"
    ManagedBy   = "Terraform"
  }
}

