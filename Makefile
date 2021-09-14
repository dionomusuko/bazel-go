NAME := bazel-pj

PHONY: build
build:
	bazel run //:gazelle -- update-repos -from_file go.mod
	bazel build //:main

PHONY: run
run:
	bazel run //:main
