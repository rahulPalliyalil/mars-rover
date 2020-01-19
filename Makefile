.PHONY:  tools lint


# Tools required
TOOLS = curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b /go/bin v1.20.0

# Lint
lint: tools
	PATH=$(PATH) golangci-lint run

# build
build:
	PATH=$(PATH) go build ./...

# test
test:
	PATH=$(PATH) go test ./...

# run
run:
	PATH=$(PATH) go run cmd/mars-rover/main.go -fPath="cmd/mars-rover/sample.txt"
