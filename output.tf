output "bucket-url" {
  value = aws_s3_bucket_website_configuration.mybucket.website_endpoint
}