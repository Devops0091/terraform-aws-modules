module "cdn" {
  source = "terraform-aws-modules/cloudfront/aws"

  version                       = "2.9.1"
  aliases                       = ["test.com"]
  enabled                       = true
  is_ipv6_enabled               = true
  comment                       = "Cloudfront Distribution for S3 Bucket static"
  retain_on_delete              = false
  wait_for_deployment           = false
  create_origin_access_identity = true
  #web_acl_id                    = module.aws-cf-waf-acl.web_acl_assoc_id
  origin_access_identities = {
    s3_bucket_one = "CloudFront can access"
  }
  
  origin = {
   cd = {
      domain_name = module.s3_one.s3_bucket_website_endpoint
        origin_id   = "S3-Website-${module.s3_one.s3_bucket_website_endpoint}"
        }
   }

  default_cache_behavior = {
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "S3-Website-${module.s3_one.s3_bucket_website_endpoint}"
    compress         = true
    query_string     = false

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400



  }
  geo_restriction = {
    restriction_type = "none"
    locations        = []
  }

  tags = {
    Name = "cf"
  }

}
