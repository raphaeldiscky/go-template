<h1 align="center">Go Template</h1>

A simple Go project template with pre-configured linting, formatting, git hooks, and CI.

## Quick Start

Install the pinned toolchain, then the project tools and dependencies:

```sh
proto use          # installs every toolchain pinned in .prototools
task install_tools # project tools + dependencies + git hooks
```

Day to day:

```sh
task sync          # install the exact deps in the lockfiles (after cloning or pulling)
task upgrade       # bump all deps to their latest versions and update the lockfiles
```

## Commands

| Command | Description |
| --- | --- |
| `task install_tools` | Install tools, dependencies and git hooks |
| `task sync` | Install exact dependencies from the lockfiles |
| `task upgrade` | Upgrade all dependencies to latest |
| `task format` | Run gofumpt + goimports |
| `task lint` | Run golangci-lint |
| `task deadcode` | Check for dead code |
| `task security` | Run govulncheck vulnerability scan |
| `task test` | Run tests |
| `task run_ci` | Run the CI pipeline locally |

## Toolchain versions

Every language and tool version lives in **`.prototools`** — one file, read by
both `proto use` locally and `moonrepo/setup-toolchain` in CI. To upgrade a
language, edit that one line.


## Technologies - Libraries

- **[golangci/golangci-lint](https://github.com/golangci/golangci-lint)** - Fast Go linters runner with 38 enabled linters
- **[mvdan/gofumpt](https://github.com/mvdan/gofumpt)** - A stricter gofmt
- **[golang.org/x/tools/cmd/goimports](https://pkg.go.dev/golang.org/x/tools/cmd/goimports)** - Updates Go import lines
- **[go-task/task](https://github.com/go-task/task)** - A task runner / simpler Make alternative
- **[evilmartians/lefthook](https://github.com/evilmartians/lefthook)** - Fast and powerful Git hooks manager
- **[conventional-changelog/commitlint](https://github.com/conventional-changelog/commitlint)** - Lint commit messages
