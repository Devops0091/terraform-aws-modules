module "s3_one" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.0"

  bucket        = "test-bucket"
  force_destroy = true
  acl           = "private"
  
  website = {
    index_document = "index.html"
    error_document = "index.html"
  }

  tags = {
   Name = "test-bucket"
}

attach_policy = true
policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AddPerm",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::test-bucket/*"
        }
    ]
}
POLICY
}