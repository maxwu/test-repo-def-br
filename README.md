# test-repo-def-br

Verify creating repo with specified default branch

The 5.17 gh provider repo `auto_init` + branch_default `rename` could creates a new repo and rename
the current default branch to specified value. As this repo is being created, the personal default
branch was preconfigured to `main` and it is renamed to `trunk` when resource github_branch_default.default
deps are met.
