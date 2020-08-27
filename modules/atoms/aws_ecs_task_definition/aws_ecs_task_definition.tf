data "template_file" "this" {
  template = "${file("${path.module}/templates/app.json.tpl")}"

  vars = {
    app_image      = "${var.repository_url}:latest"
    app_port       = var.app_port
    fargate_cpu    = var.fargate_cpu
    fargate_memory = var.fargate_memory
    aws_region     = var.aws_region
  }
}

resource "aws_ecs_task_definition" "this" {
  family                   = var.app_name
  execution_role_arn       = var.ecs_task_execution_role_arn
  network_mode             = "awsvpc"
  requires_compatibilities = [var.launch_type]
  cpu                      = var.fargate_cpu
  memory                   = var.fargate_memory
  container_definitions    = data.template_file.this.rendered
}
