include .mk/GNUmakefile

.PHONY: tests

#BATS_LIB_PATH=tests
tests:
	@tests/bats/bin/bats tests/test.bats --pretty
