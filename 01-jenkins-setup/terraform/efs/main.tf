provider "aws" {
  region = "ap-southeast-3"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-05603f5562f583bb5"
  subnet_ids = ["subnet-09ca0749aad8f20e9", "subnet-0b0a8e54914733128", "subnet-08e676abe9ca41e71"]
}