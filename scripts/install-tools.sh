#!/bin/bash

# format & lint tools
if ! command -v gofumpt &> /dev/null; then
    echo "Installing gofumpt..."
    go install mvdan.cc/gofumpt@latest
else
    echo "gofumpt already installed"
fi

if ! command -v goimports &> /dev/null; then
    echo "Installing goimports..."
    go install golang.org/x/tools/cmd/goimports@latest
else
    echo "goimports already installed"
fi

if ! command -v golangci-lint &> /dev/null; then
    echo "Installing golangci-lint..."
    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/HEAD/install.sh | sh -s -- -b $(go env GOPATH)/bin v2.4.0
else
    echo "golangci-lint already installed"
fi

# install node.js tools
pnpm install

# add husky hooks
pnpm exec husky init
cat > .husky/pre-commit << 'HOOK'
task format && task lint && git add -A .
HOOK
cat > .husky/pre-push << 'HOOK'
task test
HOOK
echo "pnpm exec commitlint --edit \$1" > .husky/commit-msg
