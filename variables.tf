variable "location" {
  default = "westeurope"
  type    = string
}

variable "costunit" {
  default = "iacpipeline"
  type    = string
}

variable "ressourcegroup" {
  default = "tf-state-rg"
  type    = string
}

variable "storageaccountname" {
  type    = string
}
