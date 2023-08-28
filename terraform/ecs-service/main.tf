module "ecs-service" {
  source = "git@github.com:iulian-balan/poc-terraform-modules.git"

  task_family           = var.task_family
  task_name             = var.task_name
  task_image            = var.task_image
  task_cpu              = var.task_cpu
  task_memory           = var.task_memory
  task_port_mappings    = var.task_port_mappings
  network_configuration = var.network_configuration
  environment_variables = var.environment_variables

  service_name                     = var.service_name
  cluster_arn                      = var.cluster_arn
  desired_count                    = var.desired_count
  service_capacity_provider        = var.service_capacity_provider
  service_capacity_provider_base   = var.service_capacity_provider_base
  service_capacity_provider_weight = var.service_capacity_provider_weight

  tags = var.tags
}