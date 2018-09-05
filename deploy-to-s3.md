# todo
I don't have time to write up this md right now but note that if you use the buildspec and push your ui to s3 buckets you will need to add this bucket policy to make it publically accessable 

```
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "AllowPublicRead",
            "Effect": "Allow",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::demo-bucket/*"
        }
    ]
}

```