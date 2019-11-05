# Web Server Example

This folder contains an example [Terraform](https://www.terraform.io/) configuration that deploys a single web server (using 
[EC2](https://aws.amazon.com/ec2/)) in an [Amazon Web Services (AWS) account](http://aws.amazon.com/). The web server
listens on port 8080 and returns the text "Hello, World" for the `/` URL.

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

Please note that this code was written for Terraform 0.12.x.

## Quick start

**Please note that this example will deploy real resources into your AWS account. I have made every effort to ensure 
all the resources qualify for the [AWS Free Tier](https://aws.amazon.com/free/), but we are not responsible for any
charges you may incur.** 

Configure your [AWS access 
keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as 
tfvars in [terraform.tfvars](./terraform.tfvar) file :

```
aws_access_key="ENTER_YOUR_KEY_HERE"
aws_secret_key="ENTER_YOUR_SECRET_HERE"
```

then change file name to `terraform.tfvars` from `terraform.tfvars`

Deploy the code:

```
terraform init
terraform apply
```

When the `apply` command completes, it will output the public IP address of the server. To test that IP:

```
curl http://(server_public_ip):8080/
```

Clean up when you're done:

```
terraform destroy
```