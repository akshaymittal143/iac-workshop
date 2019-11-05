# Getting started with IAC - workshop

## Part 1: Pre-requisites

- You must bring a laptop :computer: with support for bash i.e Linux, MacOS, or Windows 10 with Windows Subsystem for Linux installed are all fine. Alternatively, you can stand up a virtual Linux box using a tool such as [VirtualBox](https://www.virtualbox.org/). :inbox_tray:
- You must be comfortable using the shell / command-line.
- Please install this BEFORE coming to the workshop.  
    1. [AWS CLI](https://aws.amazon.com/cli/)  
    2. [Terraform](https://www.terraform.io/)

> or

### Quick setup of part 1 using a script :computer:

- this script will check for anything not installed that we need for the workshop and install it
- open a terminal & execute this commands (tested on mac)

```bash
git clone https://github.com/akshaymittal143/iac-workshop.git  

cd iac-workshop  

sh docs/config.sh
```

---

## Part 2: Create a free AWS account

- How to create AWS account, please review -> [free AWS account](https://aws.amazon.com/free/)
- If you already have AWS account, create a new one for free services or you may use your existing one but _Note_
  you might be charged for use of service. (should be very less)

---

## Part 3: Config credentials [*this is Important*]  :key: :lock:

Goal is to get `AWS_ACCESS_KEY_ID` & `AWS_SECRET_ACCESS_KEY` from AWS to gain programmatical access from AWS CLI. 

- [How do I get AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY from AWS Amazon](./aws-key-and-secret.md) with pictures.

AWS Amazon blog : [aws credentials](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys)

*Note*: :blue_book: you need to copy & paste values in [terraform.tfvars](../chap1/terraform.tfvars) to deploy terraform configuration in Amazon AWS :cloud:

---

### verification using the script :mag_right:

- open a terminal & execute this commands

```bash
git clone https://github.com/akshaymittal143/iac-workshop.git

cd iac-workshop

sh docs/config.sh
```

this script is tested on linux. :white_check_mark:

#### Resources

- Windows user: [how to Install bash on windows](https://itsfoss.com/install-bash-on-windows/)
- Recommended IDE: [VS Code](https://code.visualstudio.com/) with [terraform plugin](https://marketplace.visualstudio.com/items?itemName=mauve.terraform) or [atom](https://atom.io/) , etc
- Basic knowledge about cloud(IaaS, PaaS, etc) is recommended but not required for workshop.

any further questions: reach me out on `akshaymittalemail@gmail.com` :email:
