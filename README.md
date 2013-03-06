# Usage

## Simple Scripts

    ./cut.sh HOSTNAME
    + bundle install --path vendor/bundle
    + bundle exec berks install --path cookbooks
    + bundle exec knife solo bootstrap HOSTNAME

    ./wash.sh [HOSTNAME]
    # with HOSTNAME
    + bundle install
    + bundle exec knife solo clean HOSTNAME

    # with or without HOSTNAME
    + rm -rf ~/.berkshelf
    + rm -rf ./cookbooks

### Install gems

   bundle install --path vendor/bundle

### Install cookbooks

   bundle exec berks install --path cookbook

### Create node file

   touch nodes/HOSTNAME.json

   echo '{ "run_list": [ "recipe[recipe_name::recipe]" ] }' >> nodes/HOSTNAME.json

### Bootstrap node

   bundle exec knife solo bootstrap HOSTNAME [-P PASSWORD]

