
terraform {
  backend "s3" {
    bucket = "terraform-state-11111"
    key    = "myFolder"
    region = "ap-south-1"
  }
}
