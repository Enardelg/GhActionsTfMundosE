resource "aws_s3_bucket" "S3_tf" {
  bucket = "s3_desde_GHA"  # Nombre único para tu bucket
  acl    = "private"    # Control de acceso (ajústalo según tus necesidades)
  tags = {
    Name = "Soy un bucket generado desde Terraform"
  }
}

terraform {
  backend "s3" {
    bucket                 = "s3_desde_GHA"
    region                 = "us-east-1"
    key                    = "backend.tfstate"
    dynamodb_table         = "terraformstatelock2"
  }
}

resource "aws_dynamodb_table" "dynamodb_tf" {
  name           = "dynamo_desde_tf"
  billing_mode   = "PAY_PER_REQUEST"  # Modelo de facturación (ajústalo según tus necesidades)
  hash_key       = "LockID"              # Clave de hash (puedes cambiarlo según tus necesidades)
  attribute {
    name = "LockID"
    type = "S"  # Tipo de atributo (N para número, S para cadena, etc.)
  }

  tags = {
    Name = " Soy DynamoDB generada desde Terraform"
  }
}
