locals {
  rolename    = "${var.project_name}-role-${var.environment}"
  clustername = "${var.project_name}-cluster-${var.environment}"
  node_group_name = "${var.project_name}-cluser-worker-nodes-${var.environment}"
  node_group_role = "${var.project_name}-cluster-workers-role-${var.environment}"
}