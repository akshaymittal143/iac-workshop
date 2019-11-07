# Infrastructure as code (IAC) - Workshop

This hands-on workshop guides participants through the steps necessary to stand up a Linux environment in AWS using terraform.

- [Getting started instructions](docs/getting-started.md)
- Workshop [slides](https://slides.com/akshaymittal/iac-workshop/live#/)

## Terraform chapters summary

- [chap1](./chap1/)
    - we will deploy an EC2 instance
    - test our instance using [curl](https://en.wikipedia.org/wiki/CURL)
- [chap2](./chap2/)
    - create a custom [AWS vpc](https://aws.amazon.com/vpc/)
    - we will deploy an [EC2 instance](https://aws.amazon.com/ec2/) running [nginx server](https://www.nginx.com/resources/glossary/nginx/)
    - configure [aws security groups](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
    - use [terraform provisioner](https://www.terraform.io/docs/provisioners/remote-exec.html) remote-exec 

## Resources
- Terraform [docs](https://www.terraform.io/docs/index.html)
- Terraform CLI [commands](https://www.terraform.io/docs/commands/index.html)
