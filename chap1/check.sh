#!/bin/bash
#
# Author: @akshaymittal143
# Date: 11/03/2019
#
# Script Name: check.sh
#
# Description: Use this shell script to ensure your tf & credentials are in place
#
# Run Information:
#
# Error Log: Any output found in /path/to/logfile
#

echo " "
echo " "           

if [ ! -f /usr/local/bin/terraform ] ; then
  echo "Please install Terraform locally"
  exit 0
fi

if [ ! -f ~/.aws/credentials ] ; then
  echo "Please add your aws credentials to ~/.aws/credentials"
  exit 0
fi 

if [ ! -f terraform.tfvars ] ; then
  echo "Add aws_access_key and aws_secret_key to file terraform.tfvars"
  exit 0
fi
