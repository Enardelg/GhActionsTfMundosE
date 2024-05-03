terraform {
  backend "s3" {
    bucket                 = "s3_desde_GHA"
    region                 = "us-east-1"
    key                    = "backend.tfstate"
    dynamodb_table         = "terraformstatelock-rem"
  }
}
