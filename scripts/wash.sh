#!/usr/bin/env bash

echo "Washing:"
if test "$1"; then
  set -x
  bundle install --path vendor/bundle
  bundle exec knife solo clean $1
else
  set -x
fi

rm -rf ~/.berkshelf
rm -rf ./cookbooks/*