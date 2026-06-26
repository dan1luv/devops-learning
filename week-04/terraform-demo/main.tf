terraform {
 required_providers {
  local = {
   source = "hashicorp/local"
   version = "~> 2.0"
  }
 }
}

resource "local_file" "devops_notes" {
 filename = "${path.module}/output/devops-info.txt"
 content = <<-EOT
  Проект: DevOps Learning
  Автор: Evgeny Danilov
  Стек: Linux, Git, Python, Docker, Kubernetes, Terraform, CI/CD
  GitHub: github.com/dan1luv/devops-learning
 EOT
}
