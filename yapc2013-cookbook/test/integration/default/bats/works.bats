#!/usr/bin/env bats

@test "works" {
  [ -f "/etc/passwd" ]
  [ -f "/etc/shells" ]
}
