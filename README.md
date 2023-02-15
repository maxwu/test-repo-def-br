# test-repo-def-br

Verify creating repo with specified default branch

The previous ways to create a repo with specified default branch requires two TF applying steps because the
default_branch resource depends on a repo-branch resource and the branch shall be created first. However, an issue
during the phase is GitHub automatically set the first pushed branch as the repo's default branch when developers
usually push a dev or feature branch after an empty repo is created.

This test repo records a test with 5.17 GitHub TF provider to create an initialized repo and renaming the default
branch (inherited from org or personal setting) to specified name, e.g. `main`.

The 5.17 GitHub provider repo `auto_init` + branch_default `rename` could creates a new repo and rename
the current default branch to specified value. As this repo is being created, the personal default
branch was preconfigured to `main` and it is renamed to `trunk` when resource github_branch_default.default
deps are met.
