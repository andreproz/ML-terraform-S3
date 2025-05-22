provider "yandex" {
  token = var.yc_token
  cloud_id = var.yc_cloud_id
  folder_id = var.yc_folder_id
  zone = "ru-central1-a"
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "yandex_storage_bucket" "ml_bucket" {
  bucket = "${var.bucket_name_prefix}-${random_id.bucket_suffix.hex}"
  acl = var.bucket_acl
  tags = var.default_tags
}
