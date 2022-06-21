## 2nd Task
 
### Summary: We need to write code that will query the meta data of an instance within aws and provide a json formatted output. The choice of language and implementation is up to you. Bonus Points: The code allows for a particular data key to be retrieved individually.

#### 1.	Launched 1 EC2 Instance on AWS using Terraform Bootstrap (/home/alex/terraform-test/aws-linux-2-provision)

![Image of Yaktocat](https://github.com/AlexOOP/3_tasks_challenge/blob/master/images/2-0.png)

#### 2.	2.	And ensured machine is patched on the latest versions of software.

![Image of Yaktocat](https://github.com/AlexOOP/3_tasks_challenge/blob/master/images/2-0-1.png)

#### 3.	Prepared Bash script for quering the meta data of an instance

![Image of Yaktocat](https://github.com/AlexOOP/3_tasks_challenge/blob/master/images/2-1.png)

Launched the script with command ./1query_instance_metadata.sh 34.238.249.127 meta-data/security-groups

![Image of Yaktocat](https://github.com/AlexOOP/3_tasks_challenge/blob/master/images/2-2.png)

#### 4.	Installed Ansible on the local machine and did the same with Ansible:
ansible testserver -m command -a "curl http://169.254.169.254/latest/meta-data/mac"

![Image of Yaktocat](https://github.com/AlexOOP/3_tasks_challenge/blob/master/images/2-3.png)

#### 5.	The same with python script with output in json format. 

Destination: /home/alex/Bash/

Used commands:
ssh ec2-user@35.176.28.196 -p 2222 python < ./output_ec2_metadata_to_json.py
cat output_ec2_metadata_to_json.py | ssh ec2-user@35.176.28.196 -p 2222 python –

##### Output:
```
{
    "meta-data": {
        "ami-id": "ami-0bcc92a4e661446c1",
        "ami-launch-index": 0,
        "ami-manifest-path": "(unknown)",
        "block-device-mapping": {
            "ami": "xvda",
            "root": "/dev/xvda"
        },
        "events": {
            "maintenance": {
                "history": [],
                "scheduled": []
            }
        },
        "hibernation": {
            "configured": false
        },
        "hostname": "ip-172-32-1-11.alex.wrencloud.io",
        "identity-credentials": {
            "ec2": {
                "info": {
                    "AccountId": "514000109436",
                    "Code": "Success",
                    "LastUpdated": "2022-06-18T21:53:05Z"
                },
                "security-credentials": {
                    "ec2-instance": {
                        "AccessKeyId": "ASIAXPLGLH56OYDTXHVJ",
                        "Code": "Success",
                        "Expiration": "2022-06-19T04:11:17Z",
                        "LastUpdated": "2022-06-18T21:52:51Z",
                        "SecretAccessKey": "1omKO/B8XeOd8v91+kH0XOrF4RgTO5duuy/ORThp",
                        "Token": "IQoJb3JpZ2luX2VjEO7//////////……",
                        "Type": "AWS-HMAC"
                    }
                }
            }
        },
        "instance-action": "none",
        "instance-id": "i-08e07ca415610f606",
        "instance-life-cycle": "on-demand",
        "instance-type": "t3.micro",
        "local-hostname": "ip-172-32-1-11.alex.wrencloud.io",
        "local-ipv4": "172.32.1.11",
        "mac": "06:5a:f2:97:7d:7c",
        "metrics": {
            "vhostmd": "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
        },
        "network": {
            "interfaces": {
                "macs": {
                    "06:5a:f2:97:7d:7c": {
                        "device-number": 0,
                        "interface-id": "eni-0cf0219698f8c977a",
                        "ipv4-associations": {
                            "35.176.28.196": "172.32.1.11"
                        },
                        "local-hostname": "ip-172-32-1-11.alex.wrencloud.io",
                        "local-ipv4s": "172.32.1.11",
                        "mac": "06:5a:f2:97:7d:7c",
                        "owner-id": 514000109436,
                        "public-hostname": "ec2-35-176-28-196.eu-west-2.compute.amazonaws.com",
                        "public-ipv4s": "35.176.28.196",
                        "security-group-ids": "sg-05235c7b888d72f2c",
                        "security-groups": "alex-sec-lab",
                        "subnet-id": "subnet-0a9415676052989a8",
                        "subnet-ipv4-cidr-block": "172.32.1.0/28",
                        "vpc-id": "vpc-0d6a8dfd8b23b1db1",
                        "vpc-ipv4-cidr-block": "172.32.0.0/16",
                        "vpc-ipv4-cidr-blocks": "172.32.0.0/16"
                    }
                }
            }
        },
        "placement": {
            "availability-zone": "eu-west-2a",
            "availability-zone-id": "euw2-az2",
            "region": "eu-west-2"
        },
        "profile": "default-hvm",
        "public-hostname": "ec2-35-176-28-196.eu-west-2.compute.amazonaws.com",
        "public-ipv4": "35.176.28.196",
        "public-keys": {
            "0=aws-lab": "<?xml version=\"1.0\" encoding=\"iso-8859-1\"?>\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//E                    N\"\n\t\t \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lan                    g=\"en\">\n <head>\n  <title>404 - Not Found</title>\n </head>\n <body>\n  <h1>404 - Not Found</h1>\n </body>\n</html>\n"
        },
        "reservation-id": "r-09c36d1789058249f",
        "security-groups": "alex-sec-lab",
        "services": {
            "domain": "amazonaws.com",
            "partition": "aws"
        }
    }
}
{
    "dynamic": {
        "instance-identity": {
            "document": {
                "accountId": "514000109436",
                "architecture": "x86_64",
                "availabilityZone": "eu-west-2a",
                "billingProducts": null,
                "devpayProductCodes": null,
                "imageId": "ami-0bcc92a4e661446c1",
                "instanceId": "i-08e07ca415610f606",
                "instanceType": "t3.micro",
                "kernelId": null,
                "marketplaceProductCodes": null,
                "pendingTime": "2022-06-14T14:32:55Z",
                "privateIp": "172.32.1.11",
                "ramdiskId": null,
                "region": "eu-west-2",
                "version": "2017-09-30"
            },
            "pkcs7": "……",
            "rsa2048": "……",
            "signature": "…."
        }
    }
}
```


