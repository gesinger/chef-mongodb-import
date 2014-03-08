#!/usr/bin/env bats

@test "mongodb started" {
  run which mongodb 
  [ "$status" -eq 0 ]
}
