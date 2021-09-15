NAME := bazel-pj

PHONY: gazelle
gazelle:
	bazel run //:gazelle -- update-repos -from_file go.mod
	bazel run //:gazelle

PHONY: build
build:
	bazel build //:main

PHONY: run
run:
	bazel run //:main
