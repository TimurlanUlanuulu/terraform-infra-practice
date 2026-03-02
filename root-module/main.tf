module "cluster" {
  source      = "../eks-module"
  eks_name    = "adapt-ex-cluster-dev"
  k8s_version = "1.31"
  subnet_list = [
    "subnet-0f1ba6655e24bfcc6",
    "subnet-059b71618a9c12459",
    "subnet-01024a1b938362cd5",
  ]
  role_name = "adapt-ex-cluster-role-dev"
}