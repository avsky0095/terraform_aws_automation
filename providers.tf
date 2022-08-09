
# DESKRIPSI
# ----------------
# providers.tf digunakan untuk mengatur provider yang digunakan, termasuk resource dan module  

# terraform {                       # module yang digunakan
#   required_providers {            # provider yang digunakan (contoh https://registry.terraform.io/providers/hashicorp/aws/latest)
#     aws = {                       # menggunakan provider AWS
#       source = "hashicorp/aws"    # maintainer dari provider
#       version = ">= 4.25.0"       # versi provider yang digunakan
#     }
#   }
# }


# Provider terraform untuk mengakses api registry dan module terraform hashicorp/aws

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.25.0"
    }
  }
}


# provider aws untuk mengakses api aws 
# region untuk memasukkan region yang dipilih
# access_key dan secret_key untuk memasukkan key agar dapat terhubung ke api user aws

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}