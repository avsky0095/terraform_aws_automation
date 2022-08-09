
# DESKRIPSI
# ----------------
# variables.tf untuk mengatur value secara tersentralisasi
# NOTE: variables.tf hanya digunakan untuk default value (template), 
#       selebihnya user harus mengaturnya di file terraform.tfvars
#       Jika tidak diatur pada terraform.tfvars, maka akan menggunakan default value di variables.tf


# variable "<nama_variabel>" {
#   description = "<deskripsi sebuah variabel>"
#   type        = <tipe dari variabel, string, dll.>
#   default     = "<default value jika tidak di-set user>"
#   sensitive   = <BOOL, true/false, T jika data sensitif dan tidak ditampilkan pada output>"
# }
#


# REGION
# ----------------
# mengatur region dan default region

variable "region" {
  description = "region yang dipilih, default North Virginia"
  type        = string
  default     = "us-east-1"
}


# AWS ACCESS KEY DAN SECRET KEY
# ----------------
# mengatur user API key untuk mengakses resource AWS
# NOTE: - harus dibuat di akun AWS terlebih dahulu
#       - karena sensitif, harus diatur di terraform.tfvars

variable "aws_access_key_id" {
  description = "mengatur access key API AWS"
  type        = string
  sensitive   = true
}

variable "aws_secret_access_key" {
  description = "mengatur secret key API AWS"
  type        = string
  sensitive   = true
}


# PUBLIC IP USER
# ----------------
# Agar dapat terhubung dengan SSH ke resource AWS user
# NOTE: Public IP Adress user bersifat dynamic dan berubah-ubah, harus terus di-update
#       - karena sensitif, harus diatur di terraform.tfvars

variable "myDynamicPublicIP" {
  description = "Public IP Address user agar terhubung dengan SSH resource AWS"
  type        = string
  sensitive   = true
}
