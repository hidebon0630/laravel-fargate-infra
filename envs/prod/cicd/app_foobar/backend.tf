terraform {
  backend "s3" {
    bucket = "tfstate-hidebon0630-bucket"
    key    = "example/prod/cicd/app_foobar_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}
