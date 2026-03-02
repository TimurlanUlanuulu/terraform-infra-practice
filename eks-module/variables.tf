variable "eks_name" {
  type = string
}

variable "k8s_version" {
  type = string
}

variable "subnet_list" {
  type = list(string)
}

variable "role_name" {
  type = string
}
