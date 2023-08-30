region                        = "us-east-1"
task_family                   = "dev-poc-app-task-family"
task_name                     = "dev-poc-app"
service_name                  = "dev-poc-app"
cluster_arn                   = "arn:aws:ecs:us-east-1:237110372189:cluster/test-ecs-cluster"
desired_count                 = 1
service_capacity_provider     = "Infra-ECS-Cluster-test-ecs-cluster-82bbd752-EC2CapacityProvider-dHah8s47ZdPi"
service_wait_for_steady_state = false
environment_variables         = [{ "name" : "ENV_NAME", "value" : "test-env" }]

task_port_mappings = [
  {
    containerPort = 3000
    hostPort      = 3000
  }
]

tags = {
  Env = "test-env"
}

network_configuration = {
  subnets          = ["subnet-0880f807"]
  security_groups  = []
  assign_public_ip = false
}