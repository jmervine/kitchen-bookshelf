#!/usr/bin/env bash

echo "Preping:"
set -uex
bundle install --path vendor/bundle
bundle exec berks install --path cookbooks
