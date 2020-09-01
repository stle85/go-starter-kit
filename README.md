# Go Starter Kit

Start next go project in seconds.

## Getting started

For easy way to get started is to clone the repository.

```shell
# clone repository
git clone https://github.com/serenissimus/go-starter-kit.git

# go to cloned directory
cd go-starter-kit/

# build project(runs code formatting, linter, unit tests and build)
make all
```

## Running

Available command list.

| Command   | Description                            |
| -         | -                                      |
| clean     | Clean output directory(target).        |
| format    | Reformat code according Go code style. |
| build     | Build project.                         |
| test      | Run unit tests with coverage.          |

`make all` runs the following targets in order

* clean
* format
* test
* build

## Project structure

```bash
├── target/                     # Build output directory.
│   ├── bin                     # Directory for binaries in output directory.
│   └── lib                     # Directory for libraries in output directory.
├── mk/                         # Helpful included makefiles.
│   └── go.mk                   # Makefile for build Go applications and libraries.
├── config                      # Configuration files for different environments.
├── cmd/                        # Main applications of the project.
│   └── greeting/               # Greeting sample application.
│       └── main.go             # Greeting main file.
├── internal                    # Private application and library code.
├── pkg/                        # Public library code.
│   └── utils/                  # Utils directory.
│       ├── greeting.go         # Greeting library file.
│       └── greeting_test.go    # Unit test for greeting sample.
├── testdata                    # Test data files.
├── go.mod                      # Defines the module’s module path and its dependency requirements.
├── go.sum                      # Contains cryptographic hashes of its dependency requirements.
├── deps.go                     # Prevents removing additional dependencies from go.mod and go.sum file.
└── Makefile                    # Project build Makefile.
```

## Dependencies

### On nix platform

Install:
  - [Go](https://github.com/golang/go/wiki/Ubuntu)
  - [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - Makefile

### On Windows platform

Download and install:
  - [Go](https://golang.org/dl/)
  - [Git for windows](https://gitforwindows.org/)
  - [mingw64](https://mingw-w64.org/doku.php/download/mingw-builds)
