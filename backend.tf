terraform {
  backend "s3" {
    bucket                 = "s3-desde-gha"
    region                 = "us-east-1"
    key                    = "backend.tfstate"
    dynamodb_table         = "terraformstatelock-rem"
  }
}
