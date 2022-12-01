resource "aws_cloudfront_distribution" "distribution" {
  origin {
    domain_name = module.s3_one.s3_bucket_website_endpoint
    origin_id   = "S3-Website-${module.s3_one.s3_bucket_website_endpoint}"
      
      custom_origin_config {
      http_port              = "80"
      https_port             = "443"
      origin_protocol_policy = "http-only"
      origin_ssl_protocols   = ["TLSv1", "TLSv1.1", "TLSv1.2"]
    }
  }
    
    aliases                       = ["test.com"]
    enabled                       = true
    
    default_cache_behavior  {
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "S3-Website-${module.s3_one.s3_bucket_website_endpoint}"
      
    forwarded_values {
    query_string = false

      cookies {
        forward = "none"
      }
    }
      
    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
    }
  
  
  restrictions {
    geo_restriction {
    restriction_type = "none"
  }
}

tags = "cf"
}
