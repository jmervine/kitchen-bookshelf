#!/usr/bin/env bash

if ! test "$1"; then
  echo "./cut.sh HOSTNAME"
  exit 1
fi
echo "Cutting:"
set -uex
bundle install --path vendor/bundle
bundle exec berks install --path cookbooks
bundle exec knife solo bootstrap $1
