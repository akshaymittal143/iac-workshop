# ssh-keygen -f ~/.ssh/aws
# you will need aws_access_key & aws_secret_key, region: us-east-2
aws configure

# this will create ec2 key-pair name MyKeyPair and download MyKeyPair.pem file in chap2 dir
aws ec2 create-key-pair --region us-east-2 --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem

# if you see: An error occurred (InvalidKeyPair.Duplicate) when calling the CreateKeyPair operation: The keypair 'MyKeyPair' already exists.
# it means you already have MyKeyPair created so you may want to change --key-name example MyKeyPair1, make sure change in terraform.tfvars too
ls

# providing read permission
chmod 400 MyKeyPair.pem