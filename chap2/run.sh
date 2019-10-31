ssh-keygen -f ~/.ssh/aws

aws ec2 create-key-pair --key-name MyKeyPair --query \
'KeyMaterial' --output text > MyKeyPair.pem

ls

chmod 400 MyKeyPair.pem