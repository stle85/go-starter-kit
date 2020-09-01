# ----------------------------------------------------------------------------------
# find and setup Go

GO ?= $(shell which go)
GO_CMD = $(GO)
GO_BIN_DIR = $(shell $(GO) env GOPATH)/bin

COVERAGE_FILE ?= $(BUILD_DIR)/coverage.out

# ----------------------------------------------------------------------------------
# Build and generate commands

GO_BUILD = $(GO) build
GO_GENERATE = $(GO_CMD) generate
GO_GET = $(GO_CMD) get
GO_MOD = $(GO_CMD) mod
GO_RUN = $(GO_CMD) run -v

# ----------------------------------------------------------------------------------
# Go helpful commands

# format the code
GO_FMT = $(GO_CMD) fmt

# run unit tests with coverage
GO_TEST = $(GO_CMD) test \
	-v -cover -short \
	-covermode=atomic \
	-coverpkg=./... \
	-coverprofile=$(COVERAGE_FILE)

# cleanup go.mod and go.sum files
GO_TIDY = $(GO_MOD) tidy -v

# run linter
GO_VET = $(GO_CMD) vet -v

