# ----------------------------------------------------------------------------------
# Variables

BUILD_DIR ?= target
BUILD_DIR_BIN = $(BUILD_DIR)/bin
BUILD_DIR_LIB = $(BUILD_DIR)/lib

# ----------------------------------------------------------------------------------
# Includes

include mk/go.mk

# ----------------------------------------------------------------------------------
# Targets

.PHONY: all clean format prepare build test

default: all
all: clean format test build

clean:
	@rm -fr $(BUILD_DIR)

format:
	$(GO_TIDY)
	$(GO_FMT) ./...

prepare:
	@mkdir -pv $(BUILD_DIR_BIN)
	@mkdir -pv $(BUILD_DIR_LIB)

build: prepare
	$(GO_BUILD) -o $(BUILD_DIR_BIN)/greeting ./cmd/greeting

test: prepare
	$(GO_VET) ./...
	$(GO_TEST) ./...
