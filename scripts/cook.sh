#!/usr/bin/env bash

if ! test "$1"; then
  echo "./cook.sh HOSTNAME"
  exit 1
fi
echo "Cooking:"
set -x
bundle exec knife solo cook $@ --verbose
