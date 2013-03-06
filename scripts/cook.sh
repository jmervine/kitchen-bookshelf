#!/usr/bin/env bash

if ! test "$1"; then
  echo "./cook.sh HOSTNAME"
  exit 1
fi
echo "Cutting:"
set -x
bundle exec knife solo cook $@ --verbose
