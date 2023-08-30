variable "region" {

}

variable "task_family" {

}

variable "task_name" {

}

variable "task_image" {

}

variable "task_cpu" {
  type    = number
  default = 10
}

variable "task_memory" {
  type    = number
  default = 128
}

variable "task_port_mappings" {
  type = list(object({
    containerPort = number
    hostPort      = number
  }))
}

variable "service_name" {

}

variable "cluster_arn" {

}

variable "desired_count" {

}

variable "service_capacity_provider" {
  type = string
}

variable "service_capacity_provider_base" {
  type    = number
  default = 0
}

variable "service_capacity_provider_weight" {
  type    = number
  default = 1
}

variable "tags" {
  type = map(any)
}

variable "environment_variables" {
  type = list(map(any))
}

variable "service_wait_for_steady_state" {
  type = bool
}