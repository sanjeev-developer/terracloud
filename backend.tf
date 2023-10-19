terraform {
  backend "s3" {
    bucket = "terraform-13646213"
    key    = "myFolder"
    region = "ap-south-1"
  }
}
