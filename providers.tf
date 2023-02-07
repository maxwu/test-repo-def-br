terraform {
  required_providers {
    github = {
      source  = "hashicorp/github"
      version = "= 5.17"
    }
  }
}

# Using GITHUB_TOKEN
provider "github" {}
