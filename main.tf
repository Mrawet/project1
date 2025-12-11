terraform {
  required_providers {
    render = {
      source  = "render-inc/render"
      version = "~> 1.3.0"
    }
  }
}

provider "render" {
  api_key = var.render_api_key
}

resource "render_service" "project1_website" {
  name        = "project1-website"
  type        = "web"
  region      = "oregon"   # or any region you prefer

  runtime_source {
    image {
      image_url = "docker.io/syedmrawet/project1:latest"
    }
  }

  plan = "free"

  # Add environment variables here later if needed
  # environment_variables = { KEY = "value" }
}

output "service_url" {
  value = render_service.project1_website.url
}