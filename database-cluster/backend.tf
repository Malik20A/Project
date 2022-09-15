terraform {
  backend "s3" {
    bucket = "terraform-backend-m"
    key    = "path/to/my/tfstate"
    region = "us-east-1"
  }
}
