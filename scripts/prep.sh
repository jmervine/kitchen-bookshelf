#!/usr/bin/env bash

echo "Preping:"
if test "$1"; then
  set -x
  bundle install --path vendor/bundle
  bundle exec berks install --path cookbooks
  bundle exec knife solo prepare $@ --verbose
else
  set -x
  bundle install --path vendor/bundle
  bundle exec berks install --path cookbooks
fi
