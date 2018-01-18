Cloudfront CDN
======================================

Content delivery network

Caching servers more local to users

Not just read only - can be write too

Edge Location
* Location where content is cached
* Seperate to a AZ / region
* Over 50 globaly

Origin
* Original source of all files the CDN will distribute
* S3 bucket, EC2 instance, Elastic load balancer or Route53
* Files have a TTL will expire
* Can force TTL death but will be charged
* Can also be non-AWS

Distribution
* Name of the CDN collection of edge locations

Web Distribution - websites
RTMP - media streaming

---------------
