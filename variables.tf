variable "aws_region" {
  description = "AWS region"
  default     = "ap-southeast-2"
}

variable "s3_bucket_name" {
  description = "S3 bucket name for storing Terraform state"
}

variable "dynamodb_table_name" {
  description = "DynamoDB table name for state locking"
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  default     = "pas-eks-cluster"
}

variable "node_instance_type" {
  description = "Instance type for the EKS worker nodes"
  default     = "t3.medium"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "db_password" {
  description = "postgres db password"
  default     = "password"
}
