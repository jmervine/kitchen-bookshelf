#!/usr/bin/env bash

if ! test "$1"; then
  echo "./cut.sh HOSTNAME"
  exit 1
fi
echo "Cutting:"
set -uex
bundle exec knife solo bootstrap $1
