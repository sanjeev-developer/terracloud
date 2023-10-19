terraform {
  backend "s3" {
    bucket = "terraformbucketbackend"
    key    = "myFolder"
    region = "ap-south-1"
  }
}
