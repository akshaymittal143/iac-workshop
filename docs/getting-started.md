### Getting started with IAC - workshop:

Part 1: Pre-requisites:
--
* You must bring a laptop with support for bash i.e Linux, MacOS, or Windows 10 with Windows Subsystem for Linux installed are all fine. Alternatively, you can stand up a virtual Linux box using a tool such as [VirtualBox](https://www.virtualbox.org/).
* You must be comfortable using the shell / command-line.
* Please install this BEFORE coming to the workshop.
  1. [AWS CLI](https://aws.amazon.com/cli/)
  2. [Terraform](https://www.terraform.io/) 
----

Part 2: Create a free AWS account: 
---
- How to create AWS account, please review -> [free AWS account](https://aws.amazon.com/free/)
---
Part 3: Config credentials [*this is Important*]:
---
* Goal to get `AWS_ACCESS_KEY_ID` & `AWS_SECRET_ACCESS_KEY` from AWS to gain programmatical access from AWS CLI.  
Please follow these steps: 
1. log in to AWS account by https://console.aws.amazon.com/
2. for the first time should take you to IAM dashboard if not [click me](https://console.aws.amazon.com/iam/home#/security_credentials)
3. hit continue to look for option `Access keys (access key ID and secret access key)` 
4. click `Create New Access Key`
5. then click `Download Key File`
6. open downloaded file i.e `rootkey.csv`
7. copy `AWS_ACCESS_KEY_ID` & `AWS_SECRET_ACCESS_KEY` values
8. paste in [terraform.tfvars](../challenge1/terraform.tfvars.example)
9. rename `terraform.tfvars.example` to `terraform.tfvars`
---

### Quick setup using a script:
- this script will check if not install everything we need for the workshop
- open a terminal & execute this commands
```bash
$ git clone https://github.com/akshaymittal143/iac-workshop.git
$ cd iac-workshop
$ docs/config.sh
```
- should install any missing tools we need. (note: tested on mac)
#### Resources: 
- Windows user: [how to Install bash on windows](https://itsfoss.com/install-bash-on-windows/)

any further questions: reach me out on `akshaymittalemail@gmail.com`
