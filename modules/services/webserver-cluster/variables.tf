variable "server_port" {
  description = "The port for the server to host on!"
  type        = number
  default     = 8080
}

variable "cluster_name_prefix" {
  description = "The naming prefix which drives all cluster resource names."
  type        = string
  default     = "myclust"
}

variable "db_remote_state_bucket" {
  description = "The bucket name where we will pull the DB data from."
  type        = string
}

variable "db_remote_state_key" {
  description = "The tf state key within the bucket where we will pull the DB data from."
  type        = string
}

variable "db_remote_state_region" {
  description = "The region of the bucket where we will pull the DB data from."
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type for the cluster."
  type        = string
  default     = "t2.micro"
}

variable "min_cluster_instances" {
  description = "The minimum number of EC2 instnaces in the cluster."
  type        = number
  default     = 2
}

variable "max_cluster_instances" {
  description = "The maximum number of EC2 instances in the cluster."
  type        = number
  default     = 5
}

variable "custom_tags" {
  description = "Custom tags to assign instances created through the ASG."
  type        = map(string)
  default     = {}
}

variable "enable_business_hours_scaling" {
  description = "If set to true, scale out at 9AM and in at 5PM."
  type        = bool
  default     = false
}

variable "ami" {
  description = "The AMI to run in the cluster."
  type        = string
  default     = "ami-0fb653ca2d3203ac1"
}

variable "server_text" {
  description = "The text the web server should return"
  type        = string
  default     = "Hello there."
}
