<h1 align="center">Go Template</h1>

A simple Go project template with pre-configured linting, formatting, git hooks, and CI.

## Quick Start

Install project tools and dependencies:

```yml
task install_tools
```

## Technologies - Libraries

- **[golangci/golangci-lint](https://github.com/golangci/golangci-lint)** - Fast Go linters runner with 38 enabled linters
- **[mvdan/gofumpt](https://github.com/mvdan/gofumpt)** - A stricter gofmt
- **[golang.org/x/tools/cmd/goimports](https://pkg.go.dev/golang.org/x/tools/cmd/goimports)** - Updates Go import lines
- **[go-task/task](https://github.com/go-task/task)** - A task runner / simpler Make alternative
- **[typicode/husky](https://github.com/typicode/husky)** - Git hooks made easy
- **[conventional-changelog/commitlint](https://github.com/conventional-changelog/commitlint)** - Lint commit messages
