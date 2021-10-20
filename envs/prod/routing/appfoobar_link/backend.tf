terraform {
  backend "s3" {
    bucket = "tfstate-hidebon0630-bucket"
    key    = "example/prod/routing/appfoobar_link_v1.0.0.tfstate"
    region = "ap-northeast-1"
  }
}
