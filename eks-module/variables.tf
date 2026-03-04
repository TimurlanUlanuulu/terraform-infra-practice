variable "project_name" {
  type = string
}

variable "k8s_version" {
  type = string
}

variable "subnet_list" {
  type = list(string)
}

variable "environment" {
  type = string
}
