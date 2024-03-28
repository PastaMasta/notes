Cloudwatch Insights
======================================

Insights is great - lets you write queries against a log group wihtout needing to dump to s3 and use athena.
Bonus: you can query your cloud trails with it too if they're in a local log group.

Find what a IAM role has done:

```
fields @timestamp, @message
| sort @timestamp desc
| filter @message like /SOMEROLE/
| limit 20
```
