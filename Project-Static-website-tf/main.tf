provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucket-name
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id
  policy = jsonencode(
    {
     Version = "2012-10-17",		 	 	 
     Statement = [
        {
            Sid = "PublicReadGetObject",
            Effect = "Allow",
            Principal = "*",
            Action = "s3:GetObject"
            Resource = "${aws_s3_bucket.mybucket.arn}/*"
        }
    ]
}
  )
}
resource "aws_s3_bucket_website_configuration" "mybucket" {
  bucket = aws_s3_bucket.mybucket.id
    index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_object" "index_html" {
  bucket = aws_s3_bucket.mybucket.bucket
  source = "./index.html"
  key = "index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "img1" {
  bucket = aws_s3_bucket.mybucket.bucket
  source = "./img/img.png.jpg"
  key = "img/img.png.jpg"
  content_type = "image/jpeg"
}

resource "aws_s3_object" "img2" {
  bucket = aws_s3_bucket.mybucket.bucket
  source = "./img/pg.png.jpg"
  key = "img/pg.png.jpg"
  content_type = "image/jpeg"
}