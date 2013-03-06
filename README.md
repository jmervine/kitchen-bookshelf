# Usage

## Install gems

   bundle install --path vendor/bundle

## Install cookbooks

   bundle exec berks install --path cookbook

## Create node file

   touch nodes/HOSTNAME.json

   echo '{ "run_list": [ "recipe[recipe_name::recipe]" ] }' >> nodes/HOSTNAME.json

## Bootstrap node

   bundle exec knife solo bootstrap HOSTNAME [-P PASSWORD]

