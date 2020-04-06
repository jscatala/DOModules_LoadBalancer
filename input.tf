variable "name" {
  type        = string
  description = "The name of the load balancer"
}

variable "region" {
  default     = "sfo2"
  type        = string
  description = "Region where to place the load balancer"
}

variable "droplet_ids" {
  type        = list(string)
  description = "List of ids from droplets to work with"
}
