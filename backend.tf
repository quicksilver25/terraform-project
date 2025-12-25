terraform {
    backend "s3"  {
         bucket          = "cloud-terraform-state-2"
          key            = "terraform.tfstate"
          region         = "us-west-1"
          encrypt        = true
          dynamodb_table = "cloudcontainer-tf-table"
   }
}
