terraform {
    backend "s3" {
      bucket         = "tf101-jupiter-apne2-tfstate-gguip1"
      key            = "terraform101/iam/terraform.tfstate"
      region         = "ap-northeast-2"  
      encrypt        = true
      dynamodb_table = "terraform-lock"
    }
}
