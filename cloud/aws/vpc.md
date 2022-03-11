VPCs
======================================

Get IPs of a VPC Endpoint:
```
VpcEndpointId="vpce-whatever"
Enis=$(aws ec2 describe-vpc-endpoints --vpc-endpoint-ids ${VpcEndpointId} | jq -r '.VpcEndpoints[].NetworkInterfaceIds[]')
aws ec2 describe-network-interfaces --network-interface-ids ${Enis} | jq -r '.NetworkInterfaces[].PrivateIpAddress'
```
