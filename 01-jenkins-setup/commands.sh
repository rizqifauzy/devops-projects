#Create IAM Role dulu

cd terraform/iam
terraform init
terraform plan
terraform apply --auto-aprove

#Create SSH private and public key

ssh-keygen -f jenkins-key

#Then create AWS parameter store using this key

#Create EFS

cd terraform/efs
terraform init
terraform plan
terraform apply --auto-aprove

#Copy DNS EFS : fs-0600730a070cadf8a.efs.ap-southeast-3.amazonaws.com

#Create jenkins-controller dengan ansible 

packer build -var "efs_mount_point=fs-016c4eb73e2cff0f3.efs.ap-southeast-3.amazonaws.com" jenkins-controller.pkr.hcl
