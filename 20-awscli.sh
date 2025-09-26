{
    "Groups": [],
    "Instances": [
        {
            "AmiLaunchIndex": 0,
            "ImageId": "ami-09c813fb71547fc4f",
            "InstanceId": "i-0a738de9eebc21a20",
            "InstanceType": "t3.micro",
            "LaunchTime": "2025-09-25T08:08:56+00:00",
            "Monitoring": {
                "State": "disabled"
            },
            "Placement": {
                "AvailabilityZone": "us-east-1b",
                "GroupName": "",
                "Tenancy": "default"
            },
            "PrivateDnsName": "ip-172-31-18-209.ec2.internal",
            "PrivateIpAddress": "172.31.18.209",
            "ProductCodes": [],
            "PublicDnsName": "",
            "State": {
                "Code": 0,
                "Name": "pending"
            },
            "StateTransitionReason": "",
            "SubnetId": "subnet-0b2c3a778db623283",
            "VpcId": "vpc-076126b78975deb72",
            "Architecture": "x86_64",
            "BlockDeviceMappings": [],
            "ClientToken": "98b7e51e-877b-4d2d-8467-c82f4f6ad958",
            "EbsOptimized": false,
            "EnaSupport": true,
            "Hypervisor": "xen",
            "NetworkInterfaces": [
                {
                    "Attachment": {
                        "AttachTime": "2025-09-25T08:08:56+00:00",
                        "AttachmentId": "eni-attach-0dd047a8de7aac451",
                        "DeleteOnTermination": true,
                        "DeviceIndex": 0,
                        "Status": "attaching",
                        "NetworkCardIndex": 0
                    },
                    "Description": "",
                    "Groups": [
                        {
                            "GroupName": "allow-all",
                            "GroupId": "sg-04097b4e3c38bb38c"
                        }
                    ],
                    "Ipv6Addresses": [],
                    "MacAddress": "0a:ff:fb:d8:c7:43",
                    "NetworkInterfaceId": "eni-0cc32232cff17d915",
                    "OwnerId": "625008195638",
                    "PrivateDnsName": "ip-172-31-18-209.ec2.internal",
                    "PrivateIpAddress": "172.31.18.209",
                    "PrivateIpAddresses": [
                        {
                            "Primary": true,
                            "PrivateDnsName": "ip-172-31-18-209.ec2.internal",
                            "PrivateIpAddress": "172.31.18.209"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Status": "in-use",
                    "SubnetId": "subnet-0b2c3a778db623283",
                    "VpcId": "vpc-076126b78975deb72",
                    "InterfaceType": "interface"
                }
            ],
            "RootDeviceName": "/dev/sda1",
            "RootDeviceType": "ebs",
            "SecurityGroups": [
                {
                    "GroupName": "allow-all",
                    "GroupId": "sg-04097b4e3c38bb38c"
                }
            ],
            "SourceDestCheck": true,
            "StateReason": {
                "Code": "pending",
                "Message": "pending"
            },
            "Tags": [
                {
                    "Key": "Name",
                    "Value": "TEST"
                }
            ],
            "VirtualizationType": "hvm",
            "CpuOptions": {
                "CoreCount": 1,
                "ThreadsPerCore": 2
            },
            "CapacityReservationSpecification": {
                "CapacityReservationPreference": "open"
            },
            "MetadataOptions": {
                "State": "pending",
                "HttpTokens": "optional",
                "HttpPutResponseHopLimit": 1,
                "HttpEndpoint": "enabled",
                "HttpProtocolIpv6": "disabled",
                "InstanceMetadataTags": "disabled"
            },
            "EnclaveOptions": {
                "Enabled": false
            },
            "BootMode": "uefi-preferred",
            "PrivateDnsNameOptions": {
                "HostnameType": "ip-name",
                "EnableResourceNameDnsARecord": false,
                "EnableResourceNameDnsAAAARecord": false
            },
            "MaintenanceOptions": {
                "AutoRecovery": "default"
            },
            "CurrentInstanceBootMode": "uefi"
        }
    ],
    "OwnerId": "625008195638",
    "ReservationId": "r-050765f531592cc5d"
}
