SSM
======================================

## Forward local ports to remote ec2 ports

In this example we forward the local 55678 to the remote host 3389 for RDP.

```
aws ssm start-session --target ${ec2InstanceId} --document-name AWS-StartPortForwardingSession --parameters "localPortNumber=55678,portNumber=3389"
```

Once running we can just RDP to localhost:55678 to login
