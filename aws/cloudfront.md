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
* Can have multiple origins

Web Distribution - websites
RTMP - flash media streaming

Setup
---------------

Restrict bucket access - forces all queries to go via Cloudfront and not via s3 directly
Can set up HTTP methods for PUT/POST etc

Can restrict access using signed cookies or URLs
Also can do geo-restriction

Default URL from cloudfront is rubbish - add a CNAME to make it meat friendly

___It can take a while for the distution to be setup - during this time your requests will just be
redirected to S3 directly instead of the cloudfront CDN___

---------------
