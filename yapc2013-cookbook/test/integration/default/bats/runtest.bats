#!/usr/bin/env bats

@test "restart web app" {
  pid=`sudo status app | awk '{print $4}'`
  if [ $pid ]
  then
    sudo stop app
  fi
  sudo start app
}

@test "creating Makefile from Makefile.PL" {
  cd /tmp/examples/test/ && perl Makefile.PL
}

@test "running without LIVE" {
  make -C /tmp/examples/test/ test
}

@test "running with LIVE" {
  LIVE=1 make -C /tmp/examples/test/ test
}

