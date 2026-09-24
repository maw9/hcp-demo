variable "vpc-cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public-cidr" {
  type    = string
  default = "10.0.0.0/20"
}

variable "public1-cidr" {
  type    = string
  default = "10.0.32.0/20"
}

variable "private-cidr" {
  type    = string
  default = "10.0.16.0/20"
}