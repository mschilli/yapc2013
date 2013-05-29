#!/usr/bin/env bats

@test "creating Makefile from Makefile.PL" {
  cd /tmp/examples/test/ && perl Makefile.PL
}

@test "running without LIVE" {
  make -C /tmp/examples/test/ test
}

@test "running with LIVE" {
  LIVE=1 make -C /tmp/examples/test/ test
}

