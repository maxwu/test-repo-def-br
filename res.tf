resource "github_repository" "test-repo-def-br" {
  name        = "test-repo-def-br"
  description = "Verify creating repo with specified default branch"
  auto_init   = true
  visibility  = "public"
}

# resource "github_branch" "main" {
#   repository = github_repository.test-repo-def-br.name
#   branch     = "main"
# }

resource "github_branch_default" "default"{
  repository = github_repository.test-repo-def-br.name
  branch     = "trunk"
  rename     = true
}
