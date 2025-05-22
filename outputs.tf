output "bucket_id" {
  description = "The ID of the created S3 bucket"
  value = yandex_storage_bucket.ml_bucket.id
}

output "bucket_name" {
  description = "The name of the created S3 bucket"
  value = yandex_storage_bucket.ml_bucket.bucket
}

output "bucket_domain_name" {
  description = "The FQDN of the bucket"
  value = yandex_storage_bucket.ml_bucket.bucket_domain_name
}

output "s3_endpoint_url" {
  description = "The S3 API endpoint URL for this region"
  value = "https://storage.yandexcloud.net"
}
