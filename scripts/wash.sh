#!/usr/bin/env bash

echo "Washing:"
if test "$1"; then
  set -x
  bundle install --path vendor/bundle
  bundle exec knife solo clean $@ --verbose
else
  set -x
fi

rm -rf ./cookbooks/*
